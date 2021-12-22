from databaseConfig import host, user, password, dataBaseName
#import pymysql
import mysql.connector

""" connection to pentagon database """
print(12)
connectort = mysql.connector.connect(
    host=host,
    user=user,
    password=password,
    database=dataBaseName,
)
print(connectort)
MyCursor = connectort.cursor()

# query = f"INSERT INTO Customer (Firstname, Surname, Patronymic, Birthday, Email, PhoneNumber) VALUES ( %s, %s,%s, %s, %s, %s);"
#                 data = ('name', 'surname', 'patronymic', 'birthday', 'email', 'phone')
#                 MyCursor.execute(query, data)
# IDquery = f"SELECT CustomerID FROM Customer WHERE Firstname = 'name'"
# MyCursor.execute(IDquery)
# CUSTOMRID = MyCursor.fetchone()