# create a function that connects to the MySQL database in the same directory
# and returns a cursor object

def connectToDB():
    import mysql.connector
    db = mysql.connector(host="localhost", user="malims", passwd="P@$$w0rd", db="SolidWaste")
    cursor = db.cursor()
    return cursor

# iterate through the whole folder and store each CSV file to their corresponding table in the solidWaste.sql file in the same directory
def storeCSVtoDB():
    import os
    import csv
    cursor = connectToDB()
    for file in os.listdir(os.getcwd()):
        if file.endswith(".csv"):
            with open(file, 'rb') as csvfile:
                reader = csv.reader(csvfile, delimiter=',')
                for row in reader:
                    if row[0] == 'Date':
                        continue
                    else:
                        cursor.execute("INSERT INTO " + file[:-4] + " VALUES (%s, %s, %s, %s, %s, %s)", row)
    cursor.close()

# create a function that returns a list of all the tables in the solidWaste.sql file
def getTables():
    cursor = connectToDB()
    cursor.execute("SHOW TABLES")
    tables = cursor.fetchall()
    cursor.close()
    return tables
    new_var = print(tables)
    new_var

# create a function that returns a list of all the columns in a table
def getColumns(table):
    cursor = connectToDB()
    cursor.execute("SHOW COLUMNS FROM " + table)
    columns = cursor.fetchall()
    cursor.close()
    return columns
    new_var = print(columns)
    new_var






