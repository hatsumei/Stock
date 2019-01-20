USE test;
DROP TABLE IF EXISTS details;
CREATE TABLE `details` (
  `ID` INT(11) NOT NULL AUTO_INCREMENT,
  `NAME` VARCHAR(255) NOT NULL,
  `NECESSITY` TINYINT(1) NOT NULL,
  `COUNT` INT(11) NOT NULL,
   PRIMARY KEY(`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (34, 'HDD ����', 0, 3);
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (33, 'SSD ����', 1, 3) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (29, '�������', 0, 8)  ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (43, '���� ������� ', 1, 5) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (28, '���-������', 0, 6) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (27, '����������', 1, 5) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (35, '�������� �����', 0, 5) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (39, '���������', 0, 7) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (26, '����������', 0, 10) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (36, '������', 1, 6) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (40, '��������� ����������', 0, 9) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (25, '����������� �����', 1, 4) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (32, '������', 1, 8) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (20, '�����', 1, 3) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (31, '��������� �������', 0, 7) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (38, '������� CD/DVD', 0, 4) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (24, '�������', 0, 5) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (42, '������������ �����', 0, 7) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (37, '������� ����� ', 0, 5) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (41, '������� ����������', 0, 4) ;
INSERT INTO `details` (`ID`, `NAME`, `NECESSITY`, `COUNT`) VALUES (30, '������', 0, 10);