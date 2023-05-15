-- Функция, которая позвращает 1, если переданная дата - выходной, и 0 иначе
CREATE OR REPLACE FUNCTION is_holiday(dt DATE) RETURNS INTEGER
AS $$
DECLARE
	begin_dt DATE := '1970-01-01';
	date_day INTEGER;
	date_month INTEGER;
	is_holiday INTEGER := 0;
BEGIN
	date_day := date_part('day', dt);
	date_month := date_part('month', dt);
	
	CASE
		WHEN (date_day = 1 OR date_day = 2 OR date_day = 7) AND date_month = 1 THEN
			is_holiday := 1;
		WHEN date_day = 23 AND date_month = 2 THEN
			is_holiday := 1;
		WHEN date_day = 8 AND date_month = 3 THEN
			is_holiday := 1;
		WHEN (date_day = 1 OR date_day = 9) AND date_month = 5 THEN
			is_holiday := 1;
		WHEN date_day = 12 AND date_month = 6 THEN
			is_holiday := 1;
		WHEN date_day = 4 AND date_month = 11 THEN
			is_holiday := 1;
		WHEN date_day = 31 AND date_month = 12 THEN
			is_holiday := 1;
		ELSE
			is_holiday := 0;
	END CASE;
	
	IF (dt - begin_dt + 4) % 7 = 0 OR (dt - begin_dt + 4) % 7 = 6 THEN
		is_holiday := 1;
	END IF;
	
	RETURN is_holiday;
END;
$$
LANGUAGE plpgsql;

-- Функция вернет данные об адресе, где можно купить сейчас переданное лекарство и о цене
CREATE OR REPLACE FUNCTION get_address_and_price(drug VARCHAR(50)) RETURNS TABLE (address VARCHAR(200), price NUMERIC)
AS $$
BEGIN
	IF (SELECT drugcnt FROM druginpharmacy WHERE drugnm = drug limit 1) IS NULL
		THEN RAISE EXCEPTION 'Drug with name "%" is absent in database!', drug USING ERRCODE = '02000';
	END IF;
	
	RETURN QUERY SELECT p.address, dp.drugprice
		FROM pharmacy p
	JOIN druginpharmacy dp ON dp.pharmacyno = p.pharmacyno
	WHERE 1 = 1
	AND   dp.drugnm = drug
	AND   dp.drugcnt > 0
	AND   (is_holiday(now()::date) = 0 AND (now()::time BETWEEN p.workdayfromtm AND p.workdaytilltm) 
	OR    is_holiday(now()::date) = 1 AND (now()::time BETWEEN p.holidayfromtm AND p.holidaytilltm))
	ORDER BY dp.drugprice asc;
END;
$$
LANGUAGE plpgsql;

