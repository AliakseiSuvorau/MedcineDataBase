-- Приведем в порядок номера телефонов в таблицах customer и supplier (т.е. к виду 8 (999) 999 99 99)
CREATE OR REPLACE FUNCTION set_phone_style() RETURNS TRIGGER
AS $$
BEGIN
	NEW.phone := regexp_replace(regexp_replace(regexp_replace(NEW.phone, '[^0-9]', '', 'g'), '.', '8'), '(\d{1})(\d{3})(\d{3})(\d{2})(\d{2})', '\1 (\2) \3 \4 \5');
	RETURN NEW;
END;
$$
LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER customer_phone_style
BEFORE INSERT ON customer
FOR EACH ROW
EXECUTE FUNCTION set_phone_style();

CREATE OR REPLACE TRIGGER supplier_phone_style
BEFORE INSERT ON supplier
FOR EACH ROW
EXECUTE FUNCTION set_phone_style();

-- Сделаем триггер, который выводит уведомление о том, где появился Парацетамол
-- Это может быть полезно, если мы хотим сделать возможность подписаться на рассылку информации о таблетках
CREATE OR REPLACE FUNCTION notification() RETURNS TRIGGER
AS $$
BEGIN
	RAISE NOTICE 'Препарат % появился в аптеке номер % по адресу %!', TG_ARGV[0], NEW.pharmacyno, (
		SELECT address
			FROM pharmacy
		WHERE pharmacyno = NEW.pharmacyno
		);
	RETURN NEW;
END;
$$
LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER paracetamol_notification
AFTER INSERT ON druginpharmacy
FOR EACH ROW
	WHEN (NEW.drugnm = 'Парацетамол')
EXECUTE FUNCTION notification('Парацетамол');

