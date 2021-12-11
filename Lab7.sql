SELECT ProductName, DescribeProduct
FROM Product
WHERE ManCount = (SELECT Country
                  FROM Manufacturer)