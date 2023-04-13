create table Teachers (
    Id int primary key identity(1,1),
    Name nvarchar(50) not null,
    Surname nvarchar(50) not null,
    Email nvarchar(50) not null,
    Age int,
    Salary decimal
)

insert into Teachers(Name, Surname, Email, Age, Salary)
values('Musa', 'Afandiyev', 'musaha@mail.ru', 19, 1500),
('Murad', 'Jafarov', 'jafarov@mail.ru', 25, 1200),
('Cemsid', 'Huseynli', 'cemsid@mail.ru', 20, 2000),
('Nicat', 'Novruzzade', 'nicat@code.edu.az', 30, 2500),
('Cemil', 'Bekirov', 'cemil@mail.ru', 24, 2700),
('Ramil', 'Allahverdiyev', 'ramil@code.edu.az', 22, 900),
('Resul', 'Hesenov', 'resul@mail.ru', 15, 3200)

select * from Teachers

-- task1
declare @avgAge int
select @avgAge = AVG([Age]) from Teachers
select * from Teachers where [Age] > @avgAge

-- task2
select * from Teachers where Salary BETWEEN 1000 and 3000

-- task3
select [Name], [Surname] from Teachers where [Email] like '%mail.ru'

-- task4
select * from Teachers where [Name] like 'C%'