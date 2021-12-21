-- 1
SELECT CustomerID, Firstname,
CASE 
    WHEN Firstname="Lesha" THEN "leha"
    WHEN Firstname="Jeka" THEN "jenya"
END AS nickname
FROM Customer;
-- 3
SELECT  *,
CASE 
    WHEN Firstname="Lesha" THEN "должен сотку"
    WHEN Firstname="Jeka" THEN "должен 200"
    WHEN Firstname="Andrey" THEN "должен "
    WHEN Firstname="NeAndrey" THEN "не должен"
END as деньги
FROM CUSTOMER
ORDER BY CustomerID; 
-- 2
SELECT CustomerID, Firstname,
 IF(Firstname = "Lesha", "leha", "neleha")
 AS nickname
FROM Customer;

SELECT ManufacturerID, Brand, Count(*) as CountCountry
FROM Manufacturer 
GROUP BY Country;

-- 5
SELECT FirstName, Surname,
        COALESCE(PhoneNumber, Email, 'не определено') AS Contacts
FROM CUSTOMER;
-- в данном случае возвращается телефон,
-- если он определен. Если нет, то возвращается электронный адрес.
-- Если и электронный адрес не определен,
-- то возвращается строка "не определено".

-- 6 
SELECT ProductID
FROM Product
WHERE ProductID > 200
UNION SELECT ProductID
FROM Delivery
WHERE ProductID > 200
ORDER BY ProductID;

-- 4 without case
UPDATE CUSTOMER
Set Firstname = "alexey" ,
Surname = "zanchenko"
WHERE Firstname  = "Lesha";
-- DESCRIBE CUSTOMER;
SELECT * FROM CUSTOMER;

-- 4 case
UPDATE CUSTOMER
SET Firstname = CASE
    WHEN Firstname = "Lesha" THEN "alexandr"
    WHEN Firstname = "alex" THEN "alexandr"
    WHEN Firstname = "alexey" THEN "alexandr"
    ELSE Firstname
END;
SELECT * FROM CUSTOMER;

-- 7 

SELECT AVG(Amount * Price), Amount, ProductName, Price
FROM Product
GROUP BY ProductName
Having AVG(Amount * Price) > 600; -- > 500 withdraw lamborghini

-- 8 & 9

-- Главное отличие HAVING от WHERE в том, что в HAVING можно наложить условия на результаты группировки,
-- потому что порядок исполнения запроса устроен таким образом, что на этапе,
-- когда выполняется WHERE, ещё нет групп,
-- а HAVING выполняется уже после формирования групп

-- WHERE выполняется до формирования групп GROUP BY
-- После того как сформированы группы, можно накладывать условия на результаты агрегатных функций. Используем HAVING

-- Если нам нужно использовать агрегатные функции(SUM, COUNT, MAX, MIN and so on), то можно использовать только HAVING

-- 10

-- ORDER BY изменяет порядок возврата элементов
-- GROUP BY собираeт записи по указанным столбцам, что позволяет выполнять
-- агрегатные функции(SUM, COUNT, MAX, MIN and so on) для негрупповых столбцов

-- DISTINCT используется  для удаления дубликато, не предназначено для использования с агрегатами