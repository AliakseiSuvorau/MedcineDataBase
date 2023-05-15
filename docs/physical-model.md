# Физическая модель

----------------------------------------

Таблица `pharmacy`:

| Название        | Описание                    | Тип данных     | Ограничение   |
|-----------------|-----------------------------|----------------|---------------|
| `pharmacyno`    | Номер аптеки                | `INTEGER`      | `PRIMARY KEY` |
| `address`       | Адрес аптеки                | `VARCHAR(200)` | `NOT NULL`    |
| `website`       | Сайт аптеки                 | `VARCHAR(100)` | `NOT NULL`    |
| `workdayfromtm` | Работает в рабочий день с   | `TIME`         |               |
| `workdaytilltm` | Работает в рабочий день до  | `TIME`         |               |
| `holidayfromtm` | Работает в выходной день с  | `TIME`         |               |
| `holidaytilltm` | Работает в выходной день до | `TIME`         |               |

Таблица `ord`:

| Название     | Описание                 | Тип данных  | Ограничение   |
|--------------|--------------------------|-------------|---------------|
| `orderno`    | Номер заказа             | `INTEGER`   | `PRIMARY KEY` |
| `price`      | Цена заказа              | `NUMERIC`   | `NOT NULL`    |
| `orderdttm`  | Дата создания заказа     | `TIMESTAMP` | `NOT NULL`    |
| `pharmacyno` | Номер аптеки             | `INTEGER`   | `FOREIGN KEY` |
| `customerid` | Идентификатор покупателя | `INTEGER`   | `FOREIGN KEY` |

Таблица `drug`:

| Название   | Описание           | Тип данных      | Ограничение   |
|------------|--------------------|-----------------|---------------|
| `drugnm`   | Название лекарства | `VARCHAR(50)`   | `PRIMARY KEY` |
| `drugdesc` | Описание лекарства | `VARCHAR(1000)` |               |

Таблица `druginpharmacy`:

| Название     | Описание                               | Тип данных    | Ограничение                  |
|--------------|----------------------------------------|---------------|------------------------------|
| `drugnm`     | Название лекарства                     | `VARCHAR(50)` | `PRIMARY KEY`, `FOREIGN KEY` |
| `pharmacyno` | Номер аптеки                           | `INTEGER`     | `PRIMARY KEY`, `FOREIGN KEY` |
| `drugprice`  | Цена лекарства                         | `NUMERIC`     | `NOT NULL`                   |
| `drugcnt`    | Количество лекарств в аптеке лекарства | `INTEGER`     | `NOT NULL`                   |

Таблица `druginorder`:

| Название  | Описание            | Тип данных    | Ограничение                  |
|-----------|---------------------|---------------|------------------------------|
| `orderno` | Номер заказа        | `INTEGER`     | `PRIMARY KEY`, `FOREIGN KEY` |
| `drugnm`  | Название лекарства  | `VARCHAR(50)` | `PRIMARY KEY`, `FOREIGN KEY` |
| `drugcnt` | Количество лекарств | `INTEGER`     | `NOT NULL`                   |

Таблица `customer`:

| Название     | Описание                      | Тип данных    | Ограничение                                                             |
|--------------|-------------------------------|---------------|-------------------------------------------------------------------------|
| `customerid` | Идентификатор покупателя      | `INTEGER`     | `PRIMARY KEY`                                                           |
| `firstname`  | Имя покупателя                | `VARCHAR(50)` | `NOT NULL`                                                              |
| `phone`      | Номер телефона покупателя     | `VARCHAR(20)` | `CHECK (phone ~ '^((8|\+7)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{7,10}$')` |
| `email`      | Электронная почта покупателя  | `TEXT`        | `CHECK (email ~* '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$')`   |

Таблица `supplier`:

| Название     | Описание                           | Тип данных     | Ограничение                                                             |
|--------------|------------------------------------|----------------|-------------------------------------------------------------------------|
| `supplierid` | Идентификационный номер доставщика | `INTEGER`      | `PRIMARY KEY`                                                           |
| `address`    | Адрес доставщика                   | `VARCHAR(200)` | `NOT NULL`                                                              |
| `phone`      | Телефонный номер доставщика        | `VARCHAR(20)`  | `CHECK (phone ~ '^((8|\+7)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{7,10}$')` |
| `email`      | Электронная почта доставщика       | `TEXT`         | `CHECK (email ~* '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$')`   |

Таблица `delivery`:

| Название      | Описание                           | Тип данных     | Ограничение                  |
|---------------|------------------------------------|----------------|------------------------------|
| `orderno`     | Номер заказа                       | `INTEGER`      | `PRIMARY KEY`, `FOREIGN KEY` |
| `address`     | Адрес пункта, где находится заказ  | `VARCHAR(200)` | `PRIMARY KEY`                |                
| `validfromdt` | Данные действительны с             | `TIMESTAMP`    | `NOT NULL`                   |
| `validtodt`   | Данные действительны по            | `TIMESTAMP`    | `NOT NULL`                   |
| `supplierid`  | Идентификационный номер доставщика | `INTEGER`      | `FOREIGN KEY`                |

---------------------------------------------

Таблица `pharmacy`:

```postgresql
CREATE TABLE pharmacy (
	pharmacyno		INTEGER		NOT NULL,
	address			VARCHAR(200) 	NOT NULL,
	website 		VARCHAR(100) 	NOT NULL,
	workdayfromtm 		TIME,
	workdaytilltm 		TIME,
	holidayfromtm 		TIME,
	holidaytilltm 		TIME,
	
	CONSTRAINT pharmacy_pk PRIMARY KEY (pharmacyno)
);
```

Таблица `ord`:

```postgresql
CREATE TABLE ord (
	orderno 		INTEGER 	NOT NULL,
	price 			NUMERIC 	NOT NULL,
	orderdttm 		TIMESTAMP 	NOT NULL,
	pharmacyno 		INTEGER 	NOT NULL,
	customerid		INTEGER		NOT NULL,
	
	CONSTRAINT ord_pk PRIMARY KEY (orderno),
	
	CONSTRAINT fk_ord_pharmacy FOREIGN KEY (pharmacyno) REFERENCES pharmacy(pharmacyno),
	CONSTRAINT fk_ord_customer FOREIGN KEY (customerid) REFERENCES customer(customerid)
);
```

Таблица `drug`:

```postgresql
CREATE TABLE drug (
	drugnm 			VARCHAR(50) 	NOT NULL,
	drugdesc 		VARCHAR(1000),
	
	CONSTRAINT drug_pk PRIMARY KEY (drugnm)
);
```

Таблица `druginpharmacy`:

```postgresql
CREATE TABLE druginpharmacy (
	drugnm 			VARCHAR(50) 	NOT NULL,
	pharmacyno 		INTEGER 	NOT NULL,
	drugprice 		NUMERIC 	NOT NULL,
	drugcnt			INTEGER		NOT NULL,
	
	CONSTRAINT druginpharmacy_pk PRIMARY KEY (drugnm, pharmacyno),
	
	CONSTRAINT fk_druginpharmacy_drug FOREIGN KEY (drugnm) REFERENCES drug(drugnm),
	CONSTRAINT fk_druginpharmacy_pharmacy FOREIGN KEY (pharmacyno) REFERENCES pharmacy(pharmacyno)
);

```

Таблица `druginorder`:

```postgresql
CREATE TABLE druginorder (
	orderno 		INTEGER 	NOT NULL,
	drugnm 			VARCHAR(50) 	NOT NULL,
	drugcnt 		INTEGER 	NOT NULL,
	
	CONSTRAINT druginorder_pk PRIMARY KEY (orderno, drugnm),
	
	CONSTRAINT fk_druginorder_drug FOREIGN KEY (drugnm) REFERENCES drug(drugnm),
	CONSTRAINT fk_druginorder_ord FOREIGN KEY (orderno) REFERENCES ord(orderno)
);
```

Таблица `customer`:

```postgresql
CREATE TABLE customer (
	customerid 		INTEGER 	NOT NULL,
	firstname 		VARCHAR(50) 	NOT NULL,
	phone 			VARCHAR(20) 	CHECK (phone ~ '^((8|\+7)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{7,10}$'),
	email 			VARCHAR(100) 	CHECK (email ~* '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$'),
	
	CONSTRAINT customer_pk PRIMARY KEY (customerid)
);
```

Таблица `supplier`:

```postgresql
CREATE TABLE supplier (
	supplierid 		INTEGER 	NOT NULL,
	address 		VARCHAR(200) 	NOT NULL,
	phone 			VARCHAR(20) 	CHECK (phone ~ '^((8|\+7)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{7,10}$'),
	email 			VARCHAR(100) 	CHECK (email ~* '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$'),
	
	CONSTRAINT supplier_pk PRIMARY KEY (supplierid)
);
```

Таблица `delivery`:

```postgresql
CREATE TABLE delivery (
	orderno 		INTEGER 	NOT NULL,
	address 		VARCHAR(200) 	NOT NULL,
	validfromdt 		TIMESTAMP 	NOT NULL,
	validtodt 		TIMESTAMP 	NOT NULL,
	supplierid 		INTEGER 	NOT NULL,
	
	CONSTRAINT delivery_pk PRIMARY KEY (orderno, address),
	
	CONSTRAINT fk_delivery_ord FOREIGN KEY (orderno) REFERENCES ord(orderno),
	CONSTRAINT fk_delivery_supplier FOREIGN KEY (supplierid) REFERENCES supplier(supplierid)
);
```
