-- Active: 1739967884814@@127.0.0.1@5432@bookstore@public

-- employee Tablosu Oluşturulması

CREATE TABLE employee1 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    birthday DATE,
    email VARCHAR(100)
);


-- 2. Mockaroo Kullanarak Veri Ekleme
INSERT INTO employee1 (name, birthday, email) 
VALUES 
('Alice Johnson', '1982-03-14', 'alice.johnson@example.com'),
('Bob Brown', '1992-12-05', 'bob.brown@example.com'),
('Charlie Davis', '1988-09-22', 'charlie.davis@example.com'),
('Diana Miller', '1991-01-30', 'diana.miller@example.com'),
('Eve Wilson', '1983-11-17', 'eve.wilson@example.com'),
('Frank Moore', '1986-06-18', 'frank.moore@example.com'),
('Grace Taylor', '1993-04-12', 'grace.taylor@example.com'),
('Hank Anderson', '1987-08-02', 'hank.anderson@example.com'),
('Ivy Thomas', '1994-02-09', 'ivy.thomas@example.com'),
('Jack Martinez', '1981-07-28', 'jack.martinez@example.com'),
('Kim Lee', '1989-10-11', 'kim.lee@example.com'),
('Liam Clark', '1995-05-13', 'liam.clark@example.com'),
('Mona Hall', '1980-03-20', 'mona.hall@example.com'),
('Nina King', '1996-08-19', 'nina.king@example.com'),
('Oscar Wright', '1990-12-25', 'oscar.wright@example.com'),
('Paul Scott', '1982-04-05', 'paul.scott@example.com'),
('Quinn Young', '1997-09-30', 'quinn.young@example.com'),
('Rachel Adams', '1986-11-12', 'rachel.adams@example.com'),
('Steve Nelson', '1992-03-18', 'steve.nelson@example.com'),
('Tina Carter', '1993-07-22', 'tina.carter@example.com'),
('Ursula Baker', '1990-06-27', 'ursula.baker@example.com'),
('Victor Perez', '1987-01-02', 'victor.perez@example.com'),
('Wendy Evans', '1995-05-09', 'wendy.evans@example.com'),
('Xander Gonzalez', '1991-11-14', 'xander.gonzalez@example.com'),
('Yara Rivera', '1992-12-03', 'yara.rivera@example.com'),
('Zane Morris', '1988-09-19', 'zane.morris@example.com'),
('Anna Flores', '1994-07-10', 'anna.flores@example.com'),
('Ben Simmons', '1986-04-02', 'ben.simmons@example.com'),
('Cleo Harris', '1991-05-28', 'cleo.harris@example.com'),
('David Reed', '1983-10-20', 'david.reed@example.com'),
('Eva Morgan', '1990-11-14', 'eva.morgan@example.com'),
('Felix Cooper', '1992-02-28', 'felix.cooper@example.com'),
('Gina Stewart', '1989-07-14', 'gina.stewart@example.com'),
('Howard Rivera', '1985-01-25', 'howard.rivera@example.com'),
('Isla Brooks', '1993-05-12', 'isla.brooks@example.com'),
('Jake Kelly', '1991-09-20', 'jake.kelly@example.com'),
('Kara Carter', '1984-02-17', 'kara.carter@example.com'),
('Leo Bell', '1987-03-19', 'leo.bell@example.com'),
('Maya Evans', '1982-11-08', 'maya.evans@example.com'),
('Nick Johnson', '1991-12-04', 'nick.johnson@example.com'),
('Olivia Green', '1994-08-01', 'olivia.green@example.com'),
('Perry Brooks', '1986-04-03', 'perry.brooks@example.com'),
('Quincy Knight', '1992-01-14', 'quincy.knight@example.com'),
('Rita Foster', '1993-11-17', 'rita.foster@example.com'),
('Sam Roberts', '1980-09-15', 'sam.roberts@example.com'),
('Terry Price', '1987-10-27', 'terry.price@example.com');


-- a. id'si 1 olan satırın adını güncelleme:

UPDATE employee1
SET name = 'Isim degistirildi'
WHERE id = 1;

-- b. id'si 2 olan satırın doğum tarihini güncelleme:

UPDATE employee1
SET birthday = '1995-06-12'
WHERE id = 2;

-- c. id'si 3 olan satırın e-posta adresini güncelleme:
UPDATE employee1
SET email = 'secintimuhammet@gamil.com'
WHERE id = 3;

-- d. adında "Eve" geçen tüm satırların doğum tarihini güncelleme:

UPDATE employee1
SET birthday = '1995-12-06'
WHERE name LIKE '%Eve%';

-- e. id'si 4 olan satırın tüm bilgilerini güncelleme:
UPDATE employee1
SET name = 'NewName', birthday = '1995-12-06', email = 'newEmail@gamil.com'
WHERE id=4 ;

-- 4. DELETE İşlemleri (Satırları Silme)
-- a. id'si 1 olan satırı silme:

DELETE FROM employee1
WHERE id = 5 ;

-- b. adında "Smith" geçen tüm satırları silme:

DELETE from employee1
WHERE name LIKE '%Smith%';


-- c. doğum tarihi 1990 öncesi olan satırları silme:

DELETE FROM employee1
WHERE birthday < '1950-01-01'

-- d. e-posta adresi "example.com" ile biten tüm satırları silme:

DELETE FROM employee
WHERE email LIKE '%example.com';


-- e. id'si 5 olan satırı silme:

DELETE FROM employee
WHERE id = 6;