-- Создать файл my.sql, в котором должна создаваться таблица с информацией 
-- об одногруппниках. В таблице должно быть четыре поля: id, name, age, address. 
-- Все поля в таблице обязательны для заполнения.
-- Необходимо добавить 5-10 одногруппников в данную таблицу.
-- Необходимо написать запрос на получение имен всех одногруппников 
-- (только имен, без всего остального), которые живут в Москве и их возраст 
-- находится в диапазоне [18, 30) лет. 


-- create
CREATE TABLE CLASSMATES (
  empId INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  age INTEGER,
  address TEXT NOT NULL
);

-- insert
INSERT INTO CLASSMATES VALUES (0001, 'Роман', 18, 'Москва');
INSERT INTO CLASSMATES VALUES (0002, 'Пётр', 20, 'Волгоград');
INSERT INTO CLASSMATES VALUES (0003, 'Ева', 33, 'Казань');
INSERT INTO CLASSMATES VALUES (0004, 'Дмитрий', 25, 'Москва');
INSERT INTO CLASSMATES VALUES (0005, 'Павел', 30, 'Москва');
INSERT INTO CLASSMATES VALUES (0006, 'Ольга', 25, 'Москва');
INSERT INTO CLASSMATES VALUES (0007, 'Полина', 45, 'Тверь');
INSERT INTO CLASSMATES VALUES (0008, 'Василий', 40, 'Москва');
INSERT INTO CLASSMATES VALUES (0009, 'Анна', 37, 'Москва');
INSERT INTO CLASSMATES VALUES (0010, 'Сергей', 32, 'Тула');

-- fetch 
SELECT name FROM CLASSMATES WHERE address = 'Москва' AND age >= 18 AND age < 30;