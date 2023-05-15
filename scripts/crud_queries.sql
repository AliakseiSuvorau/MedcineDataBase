-- Добавим в таблицу customer нового покупателя
INSERT INTO customer (customerid, firstname, phone, email) VALUES
	(13, 'Станислав', '+7 1732 1798', 'stanislav@mail.gdl');

-- Узнаем всю информацию о покупателе с именем Алексей
SELECT *
	FROM customer
WHERE firstname = 'Алексей';

-- Предположим, что у пользователя Станислав поменялся адрес почты. Поменяем его в нашей таблице
UPDATE customer SET email = 'stanislav@mail.ru' WHERE firstname = 'Станислав';

-- Предположим, что покупатель 13 не дождался лекарств вовремя, и они ему больше никогда не понадобятся. Удалим покупателя из таблицы
DELETE
	FROM customer
WHERE customerid = 13;

-- Добавим таблетки в аптеки
INSERT INTO druginpharmacy (drugnm, pharmacyno, drugprice, drugcnt) VALUES
	('Мезим форте', 11, 301, 1),
	('Мезим форте', 15, 301, 1);

-- Узнаем, сколько каких таблеток имеется в аптеках
SELECT pharmacyno, drugnm, sum(drugcnt)
	FROM druginpharmacy
GROUP BY pharmacyno, drugnm
ORDER BY pharmacyno;

-- Пусть у нас в аптеке 34 купили Парацетамол. Обновим количество лекарств этого типа в этой аптеке
UPDATE druginpharmacy SET drugcnt = (
	SELECT drugcnt - 1
		FROM druginpharmacy
	WHERE 1 = 1
	AND pharmacyno = 34
	AND drugnm = 'Парацетамол'
	)
WHERE 1 = 1
AND pharmacyno = 34
AND drugnm = 'Парацетамол';

-- Аптека 10 поругалась с производителем Кагоцела и больше его не продает, а все таблетки, которые были в наличии в этой аптеке, были уничтожены. Удалим их из таблицы
DELETE
	FROM druginpharmacy
WHERE 1 = 1
AND pharmacyno = 10
AND drugnm = 'Кагоцел';
