from databaseConfig import host, user, password, dataBaseName
#import pymysql
import mysql.connector

""" connection to pentagon database """

connectort = mysql.connector.connect(
    host=host,
    user=user,
    password=password,
    database=dataBaseName,
)
MyCursor = connectort.cursor()
