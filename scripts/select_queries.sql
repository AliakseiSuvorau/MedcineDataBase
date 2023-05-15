-- Посмотрим, какие лекарства больше всего заказывал каждый покупатель
WITH customer_drug_count AS (
	SELECT o.customerid AS id, dro.drugnm AS drug_nm, sum(dro.drugcnt) AS num_of_drug
		FROM ord o
	JOIN druginorder dro ON dro.orderno = o.orderno
	GROUP BY (id, drug_nm)
	),
	max_num AS (
	SELECT id, max(num_of_drug) AS num_of_drug
		FROM customer_drug_count cdc
	GROUP BY id
	)
SELECT mn.id, cdc.drug_nm, mn.num_of_drug
	FROM max_num mn
LEFT JOIN customer_drug_count cdc ON cdc.id = mn.id AND cdc.num_of_drug = mn.num_of_drug
ORDER BY id;

-- Узнаем, какие покупатели потратили на заказы суммарно больше 20000 рублей
SELECT c.customerid AS id, c.firstname AS name, sum(o.price) AS total_sum
	FROM customer c
JOIN ord o ON o.customerid = c.customerid
GROUP BY c.customerid
HAVING sum(o.price) > 20000
ORDER BY total_sum desc;

-- Узнаем, где можно купить таблетки Валерианы и по какой цене, отсортируем по возрастанию цены
SELECT p.address, dp.drugprice AS price
	FROM pharmacy p
JOIN druginpharmacy dp ON dp.pharmacyno = p.pharmacyno
WHERE dp.drugnm = 'Валериана'
ORDER BY price asc;

-- Выведем историю всех заказов для каждого покупателя
WITH customers_orders_pharmacies AS (
	SELECT customerid, pharmacyno, orderdttm, count(*) OVER (PARTITION BY customerid ORDER BY orderdttm asc)
		FROM ord
	)
SELECT c.customerid AS id, c.firstname AS name, cop.count AS num_of_order, cop.pharmacyno AS pharmacy, date(cop.orderdttm) AS date
	FROM customers_orders_pharmacies cop
JOIN customer c ON c.customerid = cop.customerid;

-- Выведем топ-5 самых популярных лекарств
WITH cnt AS (
	SELECT drugnm, sum(drugcnt) AS drugcnt
		FROM druginorder
	GROUP BY drugnm
	)
SELECT drugnm, dense_rank() OVER (ORDER BY drugcnt)
	FROM cnt
limit 5;

-- Сравним суммарные показатели продажи таблеток за 3 соседних года
WITH drugs_date AS (
	SELECT dro.drugcnt, EXTRACT('Year' FROM o.orderdttm) AS year
		FROM druginorder dro
	LEFT JOIN ord o ON o.orderno = dro.orderno
	),
	drugs_cnt AS (
	SELECT sum(drugcnt) AS drugcnt, year
		FROM drugs_date
	GROUP BY year
	)
SELECT year, lag(drugcnt) OVER () AS prev_year_cnt, drugcnt AS this_year_cnt, lead(drugcnt) OVER () AS next_year_cnt
	FROM drugs_cnt
ORDER BY year;
