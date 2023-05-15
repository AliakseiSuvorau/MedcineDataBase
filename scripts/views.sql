-- Выведем id покупателя, его имя и его номер, оставив только код и последние 2 цифры
CREATE OR REPLACE VIEW v_customer_phone_number AS (
	WITH intern_ph AS (
	SELECT customerid, firstname, regexp_replace(regexp_replace(regexp_replace(phone, '[^0-9]', '', 'g'), '.', '8'), '(\d{1})(\d{3})(\d{3})(\d{2})(\d{2})', '\1 (\2) \3 \4 \5') AS phone
		FROM customer
	)
	SELECT customerid, firstname, substring(phone, 1, position(')' in phone) + 1) || regexp_replace(substring(phone from position(')' in phone) + 1 for length(phone) - 2 - position(')' in phone)), '\d', '*', 'g') || right(phone, 2) AS phone_number
		FROM intern_ph
)

-- Выведем почты покупателей, оставив только домены
CREATE OR REPLACE VIEW v_customer_email AS (
	SELECT customerid, firstname, repeat('*', position('@' in email) - 1) || substring(email from position('@' in email) for length(email) - position('@' in email)) AS email
		FROM customer
)

-- Получим список адресов, где есть лекарства
CREATE OR REPLACE VIEW v_drug_address AS (
	SELECT count(*) OVER (PARTITION BY dp.drugnm ORDER BY p.address), dp.drugnm, p.address
		FROM druginpharmacy dp
	JOIN pharmacy p ON p.pharmacyno = dp.pharmacyno
		WHERE dp.drugcnt > 0
)

-- Получим таблицу с данными доставщика, который привез заказ в пункт выдачи, в котором он находится сейчас
CREATE OR REPLACE VIEW v_supplier_status AS (
	SELECT s.phone AS supplier_phone, s.address AS supplier_address, d.address AS post_office_address
		FROM supplier s
	JOIN delivery d ON d.supplierid = s.supplierid
	WHERE (DATE(now()) BETWEEN d.validfromdt AND d.validtodt)
)

-- Выведем данные покупателей, которые уже больше года ничего не заказывали
CREATE OR REPLACE VIEW v_nonactive_customers AS (
	WITH latest_order AS (
		SELECT customerid, max(orderdttm) AS latest_order_date
			FROM ord
		GROUP BY customerid
	)
	SELECT l.*, c.firstname, c.phone, c.email
		FROM latest_order l
	JOIN customer c ON l.customerid = c.customerid
	WHERE (DATE(now()) - DATE(l.latest_order_date) >= 365)
	ORDER BY customerid asc
)

-- Получим список адресов, где мы сейчас можем купить Парацетамол и по какой цене
CREATE OR REPLACE VIEW v_get_paracetamol AS (
	SELECT p.address, dp.drugprice AS price
		FROM pharmacy p
	JOIN druginpharmacy dp ON dp.pharmacyno = p.pharmacyno
	WHERE 1 = 1
	AND   dp.drugnm = 'Парацетамол'
	AND   dp.drugcnt > 0
	AND   (now()::time BETWEEN p.workdayfromtm AND p.workdaytilltm)
	ORDER BY price asc
)
