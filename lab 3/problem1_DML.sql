use company;

INSERT INTO DEPARTMENT(Dnumber, Dname) VALUES 
(1 , 'MANEGMENT'), /*4 , mgr_start_date)*/
(2 , 'SALES'),
(3 , 'CLOUD');

INSERT INTO employee(ssn , fname, lname, bdate, address, gender, salary , Dno) VALUES 
(1 , 'MOHAMED' , 'KAREEM' , '8/8/2000' , '25 ASFE STREET' , 'MALE' , 3550 , 1),
(2 , 'ALI' , 'HAMMAM' , '9/1/1990' , '25 JGHJ STREET' , 'MALE' , 2710  , 1),
(3 , 'ASMAA' , 'SHERIF' , '5/2/1995' , '25 UTRY STREET' , 'FEMALE' , 2500 , 2),
(4 , 'NADER' , 'KAMAL' , '4/3/1989' , '25 AMV STREET' , 'MALE' , 5710 , 2),
(5 , 'FATEMA' , 'MOHAMED' , '5/2/1995' , '25 UYTU STREET' , 'FEMALE' , 6500 , 3),
(6 , 'AHMED' , 'IBRAHIM' , '9/20/1990' , '25 KJHJG STREET' , 'MALE' , 4710 , 3);

UPDATE DEPARTMENT SET mgr_ssn=2 , mgr_start_date=CURDATE()
WHERE Dnumber = 1;

UPDATE DEPARTMENT SET mgr_ssn=4 , mgr_start_date=CURDATE()
WHERE Dnumber = 2;

UPDATE DEPARTMENT SET mgr_ssn=6 , mgr_start_date=CURDATE()
WHERE Dnumber = 3;

INSERT INTO project(Pnumber, Pname, Plocation, Dno) VALUES 
(1 , 'project1' , 'dsavhg' , 2),
(2 , 'project2' , 'uytu' , 1),
(3 , 'project3' , 'nmbmg' , 3);
