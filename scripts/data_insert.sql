INSERT INTO pharmacy (pharmacyno, address, website, workdayfromtm, workdaytilltm, holidayfromtm, holidaytilltm) VALUES
	(1, 'г. Москва, Мещанская ул., 14, стр. 1', 'planetazdorovo.ru', '08:00', '22:00', '08:00', '22:00'),
	(2, 'г. Москва, Щепкина ул., 5, стр. 1', 'eapteka.ru', '00:00', '23:59', '00:00', '23:59'),
	(3, 'г. Москва, просп. Мира, 38', 'gorzdrav.org', '07:00', '22:00', '09:00', '22:00'),
	(4, 'г. Москва, Щепкина ул., 33', 'rigla.ru', '08:00', '22:00', '08:00', '22:00'),
	(5, 'г. Москва, Щепкина ул., 35', '366.ru', '08:00', '21:00', '08:00', '21:00'),
	(6, 'г. Москва, Верхняя Красносельская ул., 24', 'gorzdrav.org', '08:00', '22:00', '09:00', '21:00'),
	(7, 'г. Москва, Краснопрудная ул., 13А', 'vitaexpress.ru', '08:00', '22:00', '08:00', '22:00'),
	(8, 'г. Москва, Нижняя Красносельская ул., 45/17', 'budzdorov.ru', '08:00', '22:00', '09:00', '21:00'),
	(9, 'г. Москва, Переведеновский пер., 8', 'eapteka.ru', '09:00', '20:00', '09:00', '20:00'),
	(10, 'г. Москва, Колодезный пер., 3', 'gz.ru', '08:00', '22:00', '09:00', '22:00'),
	(11, 'г. Москва, Колодезный пер., 3, стр. 26', 'samson-pharma.ru', '08:00', '22:00', '09:00', '21:00'),
	(12, 'г. Москва, Измайловское ш., 71А', '366.ru', '10:00', '22:00', '10:00', '22:00'),
	(13, 'г. Москва, 9-я Парковая ул., 32', 'gz.ru', '08:00', '22:00', '09:00', '21:00'),
	(14, 'г. Москва, Сиреневый бул., 12/1', 'planetazdorovo.ru', '00:00', '23:59', '00:00', '23:59'),
	(15, 'г. Москва, Сиреневый бул., 32', 'gorzdrav.org', '08:00', '22:00', '09:00', '21:00'),
	(16, 'г. Москва, 7-я Парковая ул., 30/24', 'gz.ru', '09:00', '22:00', '09:00', '22:00'),
	(17, 'г. Москва, Первомайская ул., 42', 'redapteka.ru', '09:00', '21:00', '09:00', '21:00'),
	(18, 'г. Москва, Байкальская ул., 50/7', 'budzdorov.ru', '09:00', '21:00', '09:00', '21:00'),
	(19, 'г. Москва, 15-я Парковая ул., 44/1', 'gz.ru', '08:00', '22:00', '09:00', '22:00'),
	(20, 'г. Москва, Нагатинская ул., 31', 'rigla.ru', '00:00', '23:59', '00:00', '23:59'),
	(21, 'г. Москва, просп. Андропова, 22', '366.ru', '10:00', '22:00', '10:00', '22:00'),
	(22, 'г. Москва, Нагатинский бул., 6А', 'budzdorov.ru', '09:00', '22:00', '10:00', '22:00'),
	(23, 'г. Москва, ул. Новинки, 31', 'rigla.ru', '00:00', '23:59', '00:00', '23:59'),
	(24, 'г. Москва, Нагатинская наб., 40/1к1', 'zdravcity.ru', '09:00', '21:00', '09:00', '21:00'),
	(25, 'г. Москва, Судостроительная ул., 29', 'gz.ru', '08:00', '23:00', '08:00', '22:00'),
	(26, 'г. Москва, ул. Новинки, 1', 'vitaexpress.ru', '08:00', '22:00', '08:00', '22:00'),
	(27, 'г. Москва, Батайский пр., 35', 'apteka.magnit.ru', '10:00', '22:00', '10:00', '22:00'),
	(28, 'г. Балащиха, ул. 12-я Линия, 2А, микрорайон Никольско-Архангельский', 'gz.ru', '08:00', '22:00', '09:00', '22:00'),
	(29, 'г. Балашиха, микрорайон Дзержинского, 31', 'gz.ru', '08:00', '22:00', '09:00', '22:00'),
	(30, 'г. Долгопрудный, Первомайская ул., 3А', 'budzdorov.ru', '10:00', '22:00', '10:00', '22:00'),
	(31, 'г. Долгопрудный, Первомайская ул., 50', 'planetazdorovo.ru', '00:00', '23:59', '00:00', '23:59'),
	(32, 'г. Долгопрудный, Новый бул., 3', 'gz.ru', '09:00', '22:00', '09:00', '21:00'),
	(33, 'г. Долгопрудный, Новый бул., 7/1', 'planetazdorovo.ru', '00:00', '23:59', '00:00', '23:59'),
	(34, 'г. Долгопрудный, Лихачёвское ш., 6, корп. 4', '366.ru', '09:00', '22:00', '09:00', '22:00'),
	(35, 'г. Долгопрудный, Лихачёвское ш., 14, корп. 1', 'gz.ru', '09:00', '22:00', '09:00', '22:00');
		
INSERT INTO drug (drugnm, drugdesc) VALUES
	('Алмагель', 'Алмагель - нейтрализует свободную соляную кислоту в желудке, снижает активность пепсина, что приводит к уменьшению переваривающей активности желудочного сока.'),
	('Риностейн', 'Ацетилцистеин оказывает разжижающее действие на назофарингеальный секрет.'),
	('Аквадетрим', 'Действующее вещество: витамин D3 100 SD/S Ph сухой – 10 мг / 20 мг (соответствует 1000 МЕ / 2000 МЕ колекальциферола)'),
	('Фастум', '100 г геля содержит: Действующее вещество: кетопрофен - 2,50 г. Вспомогательные вещества: карбомер, этанол 96%, неролиевый ароматизатор, лавандиновый ароматизатор, троламин (триэтаноламин), вода очищенная.'),
	('Мезим форте', 'Панкреатин представляет собой порошок из поджелудочных желез свиней.'),
	('Валериана', 'Валериана и пустырник устраняют нервное возбуждение, снимают головную боль, помогают при бессонице.'),
	('Кагоцел', ' Кагоцел® вызывает образование в организме человека так называемых поздних интерферонов, являющихся смесью α- и β-интерферонов, обладающих высокой противовирусной активностью.'),
	('Йодомарин 200', 'Действующее вещество: калия йодид - 0,262 мг (что соответствует 0,2 мг йода).'),
	('Люголь Виалайн', 'Люголь Виалайн – готовый к применению раствор для полоскания. Средство для полости рта - обладает антисептическим, противовоспалительным эффектом.'),
	('Парацетамол', 'Анальгезирующее ненаркотическое средство.');
	
	

INSERT INTO druginpharmacy (drugnm, pharmacyno, drugprice, drugcnt) VALUES 
	('Алмагель', 2, 350, 1094), 
	('Алмагель', 9, 350, 782), 
	('Риностейн', 2, 299, 37),
	('Риностейн', 9, 299, 1983),
	('Аквадетрим', 2, 465, 378),
	('Аквадетрим', 9, 465, 13),
	('Фастум', 2, 551, 192),
	('Фастум', 9, 551, 1389),
	('Мезим форте', 2, 304, 833),
	('Мезим форте', 9, 304, 10),
	('Алмагель', 10, 311, 19),
	('Алмагель', 13, 311, 2),
	('Алмагель', 16, 311, 83),
	('Алмагель', 19, 311, 102),
	('Алмагель', 25, 311, 193),
	('Алмагель', 28, 311, 20),
	('Алмагель', 29, 311, 622),
	('Алмагель', 32, 311, 178),
	('Алмагель', 35, 311, 1),
	('Риностейн', 10, 300, 40),
	('Риностейн', 13, 300, 192),
	('Риностейн', 16, 300, 183),
	('Риностейн', 19, 300, 19),
	('Риностейн', 25, 300, 30),
	('Риностейн', 28, 300, 9),
	('Риностейн', 32, 300, 11),
	('Риностейн', 35, 300, 100),
	('Фастум', 10, 381, 123),
	('Фастум', 13, 381, 28),
	('Фастум', 16, 381, 18),
	('Фастум', 19, 381, 5),
	('Фастум', 25, 381, 3),
	('Фастум', 28, 381, 57),
	('Фастум', 29, 381, 12),
	('Фастум', 32, 381, 87),
	('Фастум', 35, 381, 9),
	('Мезим форте', 10, 301, 18),
	('Мезим форте', 13, 301, 19),
	('Мезим форте', 16, 301, 4),
	('Мезим форте', 19, 301, 138),
	('Мезим форте', 25, 301, 198),
	('Мезим форте', 28, 301, 100),
	('Мезим форте', 32, 301, 38),
	('Мезим форте', 35, 301, 1054),
	('Фастум', 8, 392, 199),
	('Фастум', 18, 392, 48),
	('Фастум', 22, 392, 10),
	('Фастум', 30, 392, 278),
	('Фастум', 7, 365, 1384),
	('Фастум', 26, 365, 28),
	('Фастум', 5, 415, 1382),
	('Фастум', 12, 415, 378),
	('Фастум', 21, 415, 137),
	('Йодомарин 200', 34, 327, 901),
	('Йодомарин 200', 22, 208, 698),
	('Валериана', 11, 376, 184),
	('Парацетамол', 13, 201, 208),
	('Валериана', 29, 188, 115),
	('Люголь Виалайн', 29, 44, 44),
	('Люголь Виалайн', 27, 79, 939),
	('Валериана', 12, 61, 636),
	('Кагоцел', 6, 395, 36),
	('Йодомарин 200', 16, 389, 952),
	('Валериана', 4, 44, 486),
	('Йодомарин 200', 24, 323, 627),
	('Люголь Виалайн', 22, 282, 879),
	('Йодомарин 200', 35, 325, 107),
	('Парацетамол', 34, 194, 846),
	('Парацетамол', 22, 264, 180),
	('Кагоцел', 13, 249, 756),
	('Валериана', 13, 197, 530),
	('Люголь Виалайн', 24, 46, 694),
	('Парацетамол', 9, 23, 247),
	('Люголь Виалайн', 31, 145, 96),
	('Кагоцел', 34, 195, 829),
	('Йодомарин 200', 21, 274, 331),
	('Валериана', 21, 302, 26),
	('Люголь Виалайн', 16, 322, 284),
	('Люголь Виалайн', 19, 25, 512),
	('Валериана', 26, 364, 684),
	('Йодомарин 200', 11, 370, 999),
	('Люголь Виалайн', 21, 150, 547),
	('Валериана', 24, 355, 980),
	('Люголь Виалайн', 2, 317, 286),
	('Парацетамол', 23, 349, 309),
	('Валериана', 35, 211, 411),
	('Валериана', 14, 82, 566),
	('Парацетамол', 7, 368, 603),
	('Кагоцел', 35, 340, 888),
	('Кагоцел', 10, 310, 71),
	('Кагоцел', 31, 310, 272),
	('Йодомарин 200', 1, 211, 479),
	('Парацетамол', 30, 235, 616),
	('Йодомарин 200', 23, 207, 76),
	('Люголь Виалайн', 23, 338, 455),
	('Люголь Виалайн', 1, 342, 755),
	('Люголь Виалайн', 35, 388, 441),
	('Йодомарин 200', 26, 250, 883),
	('Йодомарин 200', 12, 205, 210),
	('Люголь Виалайн', 17, 256, 178),
	('Люголь Виалайн', 20, 82, 1);

INSERT INTO customer (customerid, firstname, phone, email) VALUES
	(1, 'Алексей', '8 800 555 35 35', 'suvorov.as@phystech.edu'),
	(2, 'Миндовг', '+7 119 5 12 63 00', 'mindovg@mail.gdl'),
	(3, 'Войшелк', '+7 1223 1267 00', 'voishelk@mail.gdl'),
	(4, 'Трайнат', '+7 1210-1264-00', 'trainat@mail.gdl'),
	(5, 'Ягайло', '+7 1350 1434 00', 'aygail@mail.pl'),
	(6, 'Гедемин', '+7 1275 1341 00', 'gedemin@mail.gdl'),
	(7, 'Тройдень', '+7 1220 128200', 'troiden@mail.gdl'),
	(8, 'Ольгерд', '+7 1296 137700', 'olgerd@mail.gdl'),
	(9, 'Витень', '+7 1260 131600', 'viten@mail.gdl'),
	(10, 'Свидригайло', '+7 1355 145200', 'svidrigailo@mail.gdl'),
	(11, 'Жигимонт', '+7 1365 144000', 'sigizmund@mail.gdl'),
	(12, 'Казимир', '+7 1427 149200', 'kazimir@mail.gdl');

INSERT INTO ord (orderno, price, orderdttm, pharmacyno, customerid) VALUES
	(1, 682, '2011-07-17 22:38:31', 10, 6),
	(2, 3033, '2005-03-10 18:43:50', 7, 7),
	(3, 6505, '2014-12-10 11:47:10', 34, 12),
	(4, 767, '2012-07-28 15:45:48', 25, 9),
	(5, 7770, '2014-08-19 21:37:57', 4, 4),
	(6, 142, '2012-06-24 18:25:50', 22, 8),
	(7, 9061, '2000-04-24 17:41:43', 1, 4),
	(8, 6621, '2013-03-12 19:16:38', 35, 11),
	(9, 5469, '2023-03-26 18:28:50', 28, 10),
	(10, 4157, '2023-02-20 20:22:39', 29, 9),
	(11, 3272, '2008-11-27 18:55:27', 20, 8),
	(12, 8541, '2017-06-24 19:23:48', 10, 4),
	(13, 5487, '2017-01-24 17:47:43', 13, 10),
	(14, 1841, '2021-09-28 12:30:59', 28, 4),
	(15, 8589, '2023-11-21 11:40:40', 10, 3),
	(16, 6177, '2000-10-25 11:15:15', 1, 11),
	(17, 2831, '2014-10-13 17:21:29', 26, 12),
	(18, 6780, '2000-01-12 17:51:20', 32, 8),
	(19, 5156, '2009-10-21 22:30:49', 3, 2),
	(20, 9507, '2006-09-27 21:50:40', 18, 10),
	(21, 8383, '2019-11-24 18:34:51', 31, 7),
	(22, 5405, '2008-08-28 18:36:35', 27, 9),
	(23, 3847, '2022-03-11 10:49:36', 31, 8),
	(24, 8195, '2022-08-14 12:21:42', 19, 5),
	(25, 2774, '2019-08-16 22:31:13', 4, 3),
	(26, 5329, '2000-08-18 13:42:45', 5, 6),
	(27, 2317, '2007-03-24 18:18:45', 11, 9),
	(28, 6049, '2008-08-11 13:46:36', 4, 8),
	(29, 3296, '2023-04-11 18:16:38', 29, 4),
	(30, 2655, '2023-04-24 12:36:24', 6, 6),
	(31, 7551, '2019-02-17 19:47:40', 1, 2),
	(32, 5102, '2014-03-27 10:25:11', 23, 11),
	(33, 852, '2022-02-28 16:31:37', 16, 2),
	(34, 2325, '2022-05-27 10:40:23', 24, 3),
	(35, 2380, '2021-11-11 16:25:23', 7, 11),
	(36, 6957, '2009-02-18 15:27:11', 21, 5),
	(37, 6869, '2018-10-26 20:29:48', 4, 6),
	(38, 6008, '2018-06-18 16:56:33', 3, 12),
	(39, 3040, '2018-09-25 11:37:55', 8, 6),
	(40, 2323, '2000-08-14 19:21:45', 30, 11),
	(41, 285, '2004-04-26 13:56:48', 16, 6),
	(42, 3164, '2011-11-23 22:34:31', 9, 2),
	(43, 9647, '2019-07-15 14:46:34', 11, 2),
	(44, 3458, '2014-09-19 16:28:10', 27, 1),
	(45, 7750, '2012-04-22 21:51:32', 26, 12),
	(46, 199, '2012-06-20 19:21:21', 29, 11),
	(47, 5417, '2002-09-20 11:55:18', 5, 12),
	(48, 5520, '2019-11-13 22:53:15', 32, 6),
	(49, 2090, '2004-06-26 21:39:50', 1, 5),
	(50, 9748, '2008-04-20 21:39:54', 6, 2);

INSERT INTO druginorder (orderno, drugnm, drugcnt) VALUES
	(2, 'Кагоцел', 4),
	(45, 'Йодомарин 200', 2),
	(4, 'Кагоцел', 9),
	(46, 'Аквадетрим', 5),
	(38, 'Аквадетрим', 2),
	(43, 'Алмагель', 9),
	(25, 'Риностейн', 10),
	(14, 'Аквадетрим', 3),
	(31, 'Парацетамол', 2),
	(46, 'Парацетамол', 1),
	(3, 'Алмагель', 5),
	(31, 'Аквадетрим', 1),
	(41, 'Люголь Виалайн', 3),
	(4, 'Йодомарин 200', 2),
	(13, 'Йодомарин 200', 1),
	(32, 'Валериана', 7),
	(6, 'Кагоцел', 10),
	(29, 'Алмагель', 2),
	(32, 'Фастум', 10),
	(44, 'Кагоцел', 2),
	(45, 'Фастум', 6),
	(35, 'Йодомарин 200', 1),
	(16, 'Йодомарин 200', 2),
	(35, 'Парацетамол', 5),
	(38, 'Йодомарин 200', 2),
	(35, 'Валериана', 7),
	(48, 'Люголь Виалайн', 2),
	(38, 'Люголь Виалайн', 2),
	(22, 'Йодомарин 200', 8),
	(50, 'Йодомарин 200', 9),
	(47, 'Мезим форте', 1),
	(42, 'Мезим форте', 7),
	(24, 'Люголь Виалайн', 2),
	(11, 'Йодомарин 200', 5),
	(16, 'Аквадетрим', 5),
	(35, 'Мезим форте', 8),
	(36, 'Кагоцел', 1),
	(38, 'Кагоцел', 6),
	(37, 'Йодомарин 200', 2),
	(44, 'Фастум', 10),
	(37, 'Аквадетрим', 1),
	(28, 'Алмагель', 10),
	(1, 'Алмагель', 4),
	(45, 'Кагоцел', 1),
	(33, 'Йодомарин 200', 6),
	(28, 'Люголь Виалайн', 8),
	(48, 'Фастум', 2),
	(45, 'Люголь Виалайн', 2),
	(7, 'Парацетамол', 2),
	(50, 'Валериана', 9),
	(37, 'Риностейн', 2),
	(10, 'Валериана', 4),
	(34, 'Люголь Виалайн', 8),
	(49, 'Парацетамол', 10),
	(38, 'Риностейн', 4),
	(30, 'Люголь Виалайн', 4);

INSERT INTO supplier (supplierid, address, phone, email) VALUES
	(1, 'г. Москва, наб. Гагарина, 95', '+74950026637', 'terrence84@renner.com'),
	(2, 'г. Мытищи, наб. Ленина, 96', '+73976274942', 'kblick@fadel.biz'),
	(3, 'г. Солнечногорск, ул. Будапештсткая, 3', '+72984234339', 'eschinner@yahoo.com'),
	(4, 'г. Озёры, ул. Домодедовская, 7', '+77326746374', 'emmanuel97@okon.info'),
	(5, 'г. Дмитров, проезд Косиора, 77', '+71993047283', 'lura.schroeder@langworth.net'),
	(6, 'г. Талдом, спуск Ленина, 25', '+72846264952', 'taryn.beatty@hotmail.com'),
	(7, 'г. Чехов, въезд Балканская, 73', '89857737183', 'oswaldo.johnson@mcglynn.com'),
	(8, 'г. Пушкино, пр. Ленина, 27', '+73747772621', 'brown.braden@harris.com'),
	(9, 'г. Долгопрудный, въезд Славы, 9', '80093765243', 'uquigley@koepp.biz'),
	(10, 'г. Москва, пл. Ленина, 64', '80651227354', 'walsh.malachi@wiegand.com');

INSERT INTO delivery (orderno, address, validfromdt, validtodt, supplierid) VALUES
	(9, 'г. Озёры, пл. Сталина, 83', '2012-12-14', '2012-12-26', 3),
	(35, 'г. Озёры, пл. Сталина, 83', '2011-12-24', '2011-12-26', 5),
	(9, 'г. Мытищи, въезд Ленина, 55', '2018-01-15', '2018-01-25', 2),
	(37, 'г. Москва, ул. Ломоносова, 22', '2005-07-11', '2005-07-20', 10),
	(21, 'г. Озёры, пл. Сталина, 83', '2014-07-15', '2014-07-16', 2),
	(49, 'г. Солнечногорск, бульвар Ломоносова, 20', '2007-11-12', '2007-11-18', 6),
	(49, 'г. Москва, ул. Ломоносова, 22', '2000-09-19', '2000-09-22', 5),
	(50, 'г. Долгопрудный, бульвар Гоголя, 39', '2009-02-22', '2009-02-28', 9),
	(9, 'г. Долгопрудный, бульвар Гоголя, 39', '2002-04-18', '2002-04-26', 4),
	(1, 'г. Долгопрудный, бульвар Гоголя, 39', '2020-04-15', '2020-04-28', 3),
	(11, 'г. Москва, ул. Ломоносова, 22', '2020-03-14', '2020-03-26', 8),
	(7, 'г. Пушкино, пл. Косиора, 94', '2004-01-16', '2004-01-20', 4),
	(50, 'г. Москва, спуск Будапештсткий, 61', '2023-04-23', '9999-12-31', 1),
	(49, 'г. Пушкино, пл. Косиора, 94', '2019-06-26', '2019-06-27', 3),
	(27, 'г. Долгопрудный, бульвар Гоголя, 39', '2005-06-26', '2005-06-29', 2),
	(4, 'г. Солнечногорск, бульвар Ломоносова, 20', '2009-02-19', '2009-02-26', 3),
	(5, 'г. Озёры, пл. Сталина, 83', '2021-10-14', '2021-10-23', 2),
	(42, 'г. Пушкино, пл. Косиора, 94', '2018-12-14', '2018-12-29', 1),
	(29, 'г. Москва, пр. Ленина, 28', '2020-06-24', '2020-06-25', 1),
	(36, 'г. Москва, ул. Сталина, 84', '2001-07-20', '2001-07-28', 1),
	(27, 'г. Озёры, пл. Сталина, 83', '2020-01-23', '2020-01-24', 8),
	(19, 'г. Клин, пр. Ленина, 40', '2008-07-22', '2008-07-27', 5),
	(44, 'г. Чехов, пл. Будапештсткая, 97', '2013-08-24', '2013-08-29', 1),
	(47, 'г. Чехов, пл. Будапештсткая, 97', '2006-12-21', '2006-12-24', 5),
	(46, 'г. Москва, ул. Ломоносова, 22', '2014-06-13', '2014-06-15', 10),
	(20, 'г. Мытищи, въезд Ленина, 55', '2001-08-25', '2001-08-29', 9),
	(17, 'г. Москва, ул. Сталина, 84', '2015-04-17', '2015-04-25', 9),
	(26, 'г. Москва, ул. Ломоносова, 22', '2006-06-26', '2006-06-29', 2),
	(48, 'г. Москва, ул. Ломоносова, 22', '2020-12-10', '2020-12-15', 7),
	(24, 'г. Озёры, пл. Сталина, 83', '2002-11-13', '2002-11-25', 2),
	(28, 'г. Москва, ул. Сталина, 84', '2022-06-12', '2022-06-23', 1),
	(23, 'г. Клин, пр. Ленина, 40', '2013-12-13', '2013-12-22', 2),
	(39, 'г. Москва, ул. Ломоносова, 22', '2022-06-17', '2022-06-23', 9),
	(10, 'г. Солнечногорск, бульвар Ломоносова, 20', '2011-06-11', '2011-06-23', 6),
	(39, 'г. Москва, спуск Будапештсткий, 61', '2010-11-20', '2010-11-22', 7),
	(21, 'г. Москва, ул. Сталина, 84', '2009-12-13', '2009-12-15', 1),
	(33, 'г. Мытищи, въезд Ленина, 55', '2023-04-20', '9999-12-31', 6),
	(32, 'г. Солнечногорск, бульвар Ломоносова, 20', '2014-10-12', '2014-10-16', 3),
	(14, 'г. Пушкино, пл. Косиора, 94', '2022-05-15', '2022-05-22', 5),
	(41, 'г. Пушкино, пл. Косиора, 94', '2013-06-25', '2013-06-26', 7),
	(3, 'г. Москва, ул. Ломоносова, 22', '2009-09-25', '2009-09-27', 9),
	(14, 'г. Озёры, пл. Сталина, 83', '2017-10-10', '2017-10-15', 4),
	(45, 'г. Москва, ул. Ломоносова, 22', '2006-06-17', '2006-06-21', 8),
	(15, 'г. Москва, ул. Сталина, 84', '2008-08-25', '2008-08-28', 10),
	(45, 'г. Солнечногорск, бульвар Ломоносова, 20', '2011-04-23', '2011-04-24', 4),
	(21, 'г. Москва, пр. Ленина, 28', '2018-06-22', '2018-06-28', 2),
	(31, 'г. Мытищи, въезд Ленина, 55', '2018-02-10', '2018-02-14', 8),
	(44, 'г. Москва, ул. Ломоносова, 22', '2005-05-23', '2005-05-27', 7),
	(35, 'г. Москва, ул. Сталина, 84', '2019-02-21', '2019-02-27', 4),
	(47, 'г. Солнечногорск, бульвар Ломоносова, 20', '2006-10-10', '2006-10-28', 7),
	(30, 'г. Москва, пр. Ленина, 28', '2004-10-22', '2004-10-27', 1),
	(2, 'г. Москва, ул. Ломоносова, 22', '2020-02-19', '2020-02-22', 7),
	(19, 'г. Пушкино, пл. Косиора, 94', '2003-07-25', '2003-07-28', 5),
	(47, 'г. Мытищи, въезд Ленина, 55', '2021-01-23', '2021-01-29', 4),
	(27, 'г. Москва, ул. Ломоносова, 22', '2015-12-22', '2015-12-29', 10),
	(28, 'г. Москва, ул. Ломоносова, 22', '2003-05-20', '2003-05-23', 7),
	(44, 'г. Пушкино, пл. Косиора, 94', '2003-02-15', '2003-02-18', 9),
	(8, 'г. Клин, пр. Ленина, 40', '2002-08-23', '2002-08-27', 6),
	(45, 'г. Клин, пр. Ленина, 40', '2006-01-22', '2006-01-25', 7),
	(40, 'г. Москва, ул. Ломоносова, 22', '2005-08-16', '2005-08-25', 5),
	(47, 'г. Москва, ул. Сталина, 84', '2002-12-16', '2002-12-27', 10),
	(29, 'г. Москва, ул. Ломоносова, 22', '2003-02-24', '2003-02-25', 4),
	(24, 'г. Пушкино, пл. Косиора, 94', '2016-03-10', '2016-03-14', 1),
	(42, 'г. Клин, пр. Ленина, 40', '2010-09-25', '2010-09-27', 8),
	(5, 'г. Чехов, пл. Будапештсткая, 97', '2020-07-14', '2020-07-25', 4),
	(36, 'г. Солнечногорск, бульвар Ломоносова, 20', '2021-10-24', '2021-10-29', 3);
