-- Агрегатные функции без GROUP BY
SELECT  COUNT(ProductName) AS Количество_продуктов, MAX(Amount) AS минимум, MIN(Amount) AS максимум, AVG(Amount) AS среднее, SUM(Amount) AS сумма FROM Product;
DO SLEEP(4);

-- Агрегатные функции совместно с GROUP BY
SELECT Firstname, COUNT(*) FROM Customer
GROUP BY Firstname;

-- Вывод после двух примеров с / без GROUP BY: Если команда отсутсвует, то (грубо говоря) вся таблица и есть сплошная группа
-- Иными словами, все агрегатные функции будут применяться к каждому ряду индивидуально 


DO SLEEP(3);
SELECT Customer.CustomerID, Customer.Firstname, Ordering.TotalSum FROM Customer, Ordering
WHERE Customer.CustomerID = Ordering.CustomerID
GROUP BY CustomerID; 

DO SLEEP(2);
SELECT ProductName, COUNT(ProductName), MAX(Amount), MIN(Amount), AVG(Amount), SUM(Amount) AS Сумма_цен FROM Product
GROUP BY ProductName;

-- Использование Having
-- Разница между Having и Where: при группировании Having работает с каждой построенной группой и выводит ряд если группа соответсвует условиям (результат равен true)
-- Если команда GROUP BY отсутсвует, обе выше упомянутые команды работают одинаково (каждый ряд как группа считаются как для GROUP BY)
DO SLEEP(4);
SELECT  Country, COUNT(*) AS Производитель
FROM Manufacturer
GROUP BY Country
Having COUNT(*) > 1;


-- Разница между DISTINCT и Group by (окромя того что второе еще и групирует) заключается в том, 
-- что первое уберает дубликаты касательно того что мы выбрали: если после DISTINCT использовать *, 
-- то будут убраны только сплошные дубликаты (тоесть все поля у них должны быть одинаковые)
DO SLEEP(5);
SELECT  DISTINCT *
FROM Customer;

DO SLEEP(5);
SELECT  DISTINCT Firstname
FROM Customer;

DO SLEEP(5);
SELECT  *
FROM Customer 
GROUP BY Firstname
Having COUNT(*) = 1;