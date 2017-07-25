--создание таблицы авторы
create table authors(
nameauthor varchar(50)
)engine=innodb CHARSET=cp1251;
-- проиндексируем поле имя автора
create index auth
on authors (nameauthor)

--создаем таблицу книги 
create table book (
ISBN INT (20) NOT NULL PRIMARY KEY,
nameauthor VARCHAR(50) NOT NULL,
name  VARCHAR(50) NOT NULL,
pagecount INT(20) NOT NULL,
genre SET ('Роман','Фэнтези','Лирика','Фантастика'),
constraint foreign key(nameauthor) references authors(nameauthor) on delete restrict on update restrict
)engine=innodb CHARSET=cp1251;

-- добавляем информацию в поля
INSERT INTO Authors (`nameauthor`) VALUES 
('Аркадий Стругацкий'),
 ('Борис Стругацкий'),
 ('Людмила Улицкая')
 ('Дмитрий Глуховский'), 
 ('Кэри Жаклин'), 
 ('Александр Пушкин'), 
 ('Николай Гоголь')
 INSERT INTO `first`.`book` (`ISBN`, `nameauthor`, `name`, `pagecount`, `genre`) values 
('2147483647'),
('Аркадий Стругацкий', 'Борис Сругацкий'),
('Пикник на обочине'),
('350'),
('Фантастика')
INSERT INTO  `first`.`book` (
`ISBN` ,
`nameauthor` ,
`name` ,
`pagecount` ,
`genre`
)
VALUES (
'123456',  'Александр Пушкин',  'Евгений Онегин',  '150',  'Роман'
), (
'234567',  'Александр Пушкин',  'Евгений Онегин',  '150',  'Лирика'
);
-- Вывести название книги и ее авторов для жанра “Фантастика”.
SELECT name, nameauthor FROM `book` WHERE genre = 'Фантастика'
--Вывести все книги, где больше 2-х авторов.
SELECT name 
FROM  `book` 
GROUP BY name
HAVING COUNT( * ) >2

--Вывести количество книг по каждому жанру.
SELECT COUNT( DISTINCT name), genre  FROM book
GROUP BY genre
HAVING COUNT(name) ;