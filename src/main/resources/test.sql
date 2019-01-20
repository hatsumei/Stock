USE test;
DROP TABLE IF EXISTS details;
CREATE TABLE `details` (
  `ID` INT(11) NOT NULL AUTO_INCREMENT,
  `NAME` VARCHAR(255) NOT NULL,
  `NECESSITY` TINYINT(1) NOT NULL,
  `COUNT` INT(11) NOT NULL,
   PRIMARY KEY(`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (34, 'HDD äèñê', 0, 3);
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (33, 'SSD äèñê', 1, 3) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (29, 'àäàïòåð', 0, 8)  ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (43, 'áëîê ïèòàíèÿ ', 1, 5) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (28, 'âåá-êàìåðà', 0, 6) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (27, 'âèäåîêàðòà', 1, 5) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (35, 'çâóêîâàÿ êàðòà', 0, 5) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (39, 'êàðòðèäåð', 0, 7) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (26, 'êëàâèàòóðà', 0, 10) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (36, 'êîðïóñ', 1, 6) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (40, 'Êîðïóñíûé âåíòèëÿòîð', 0, 9) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (25, 'ìàòåðèíñêàÿ ïëàòà', 1, 4) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (32, 'ïàìÿòü', 1, 8) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (20, 'ïëàòà', 1, 3) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (31, 'ïîäñâåòêà êîðïóñà', 0, 7) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (38, 'ïðèâîäû CD/DVD', 0, 4) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (24, 'ïðèíòåð', 0, 5) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (42, 'Ïðîöåññîðíûé êóëåð', 0, 7) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (37, 'ñåòåâàÿ êàðòà ', 0, 5) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (41, 'Ñèñòåìà îõëàæäåíèÿ', 0, 4) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (30, 'ôëåøêà', 0, 10);
