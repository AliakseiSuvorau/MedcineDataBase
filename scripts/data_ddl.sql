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

CREATE TABLE drug (
	drugnm 			VARCHAR(50) 	NOT NULL,
	drugdesc 		VARCHAR(1000),
	
	CONSTRAINT drug_pk PRIMARY KEY (drugnm)
);

CREATE TABLE druginpharmacy (
	drugnm 			VARCHAR(50) 	NOT NULL,
	pharmacyno 		INTEGER 	NOT NULL,
	drugprice 		NUMERIC 	NOT NULL,
	drugcnt			INTEGER		NOT NULL,
	
	CONSTRAINT druginpharmacy_pk PRIMARY KEY (drugnm, pharmacyno),
	
	CONSTRAINT fk_druginpharmacy_drug FOREIGN KEY (drugnm) REFERENCES drug(drugnm),
	CONSTRAINT fk_druginpharmacy_pharmacy FOREIGN KEY (pharmacyno) REFERENCES pharmacy(pharmacyno)
);

CREATE TABLE customer (
	customerid 		INTEGER 	NOT NULL,
	firstname 		VARCHAR(50) 	NOT NULL,
	phone 			VARCHAR(20) 	CHECK (phone ~ '^((8|\+7)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{7,10}$'),
	email 			VARCHAR(100) 	CHECK (email ~* '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$'),
	
	CONSTRAINT customer_pk PRIMARY KEY (customerid)
);

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

CREATE TABLE druginorder (
	orderno 		INTEGER 	NOT NULL,
	drugnm 			VARCHAR(50) 	NOT NULL,
	drugcnt 		INTEGER 	NOT NULL,
	
	CONSTRAINT druginorder_pk PRIMARY KEY (orderno, drugnm),
	
	CONSTRAINT fk_druginorder_drug FOREIGN KEY (drugnm) REFERENCES drug(drugnm),
	CONSTRAINT fk_druginorder_ord FOREIGN KEY (orderno) REFERENCES ord(orderno)
);

CREATE TABLE supplier (
	supplierid 		INTEGER 	NOT NULL,
	address 		VARCHAR(200) 	NOT NULL,
	phone 			VARCHAR(20) 	CHECK (phone ~ '^((8|\+7)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{7,10}$'),
	email 			VARCHAR(100) 	CHECK (email ~* '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$'),
	
	CONSTRAINT supplier_pk PRIMARY KEY (supplierid)
);

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
