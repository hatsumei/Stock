USE test;
DROP TABLE IF EXISTS details;
CREATE TABLE `details` (
  `ID` INT(11) NOT NULL AUTO_INCREMENT,
  `NAME` VARCHAR(255) NOT NULL,
  `NECESSITY` TINYINT(1) NOT NULL,
  `COUNT` INT(11) NOT NULL,
   PRIMARY KEY(`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (34, 'HDD диск', 0, 3);
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (33, 'SSD диск', 1, 3) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (29, 'адаптер', 0, 8)  ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (43, 'блок питания ', 1, 5) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (28, 'веб-камера', 0, 6) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (27, 'видеокарта', 1, 5) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (35, 'звуковая карта', 0, 5) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (39, 'картридер', 0, 7) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (26, 'клавиатура', 0, 10) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (36, 'корпус', 1, 6) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (40, 'Корпусный вентилятор', 0, 9) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (25, 'материнская плата', 1, 4) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (32, 'память', 1, 8) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (20, 'плата', 1, 3) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (31, 'подсветка корпуса', 0, 7) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (38, 'приводы CD/DVD', 0, 4) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (24, 'принтер', 0, 5) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (42, 'Процессорный кулер', 0, 7) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (37, 'сетевая карта ', 0, 5) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (41, 'Система охлаждения', 0, 4) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (30, 'флешка', 0, 10);