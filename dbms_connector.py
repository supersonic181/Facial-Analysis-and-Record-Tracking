import mysql.connector

mydb = mysql.connector.connect(
    host = "localhost",
    user = "root",
    password = "12345",
    database = "shubham"
    )

cursor = mydb.cursor()
count = 1
#mycursor.execute("CREATE DATABASE shubham")
def dropTable(table):
    for tableName in table:
        sql = f"DROP TABLE {tableName}"
        cursor.execute(sql)
    return 0

def create(table):
    for tableName in table:
        sql = f"CREATE TABLE {tableName}(Serial_No INT,Name CHAR(30),Status CHAR(1),Entry_Time CHAR(8),Exit_Time CHAR(8))"
        cursor.execute(sql)
    return 0

def insert(data):
    global count
    #data.append("Unknown")
    for name in data:
        sql = "INSERT INTO table1(Serial_No, Name, Status, Entry_Time, Exit_Time) VALUES (%s, %s, %s, %s, %s)"
        val = (count, name,"A","NA","NA")
        cursor.execute(sql, val)
        mydb.commit()
        count +=1
    return "Inserting Names to DB - Success"

def update(name,status,entry_time,exit_time):
    sql = "UPDATE table1 SET Status = %s,Entry_Time = %s,Exit_Time=%s WHERE name=%s"
    val = (status,entry_time,exit_time,name)
    
    cursor.execute(sql,val)
    mydb.commit()


# =============================================================================
# table = ['table1','table2']
# dropTable(table)
# create(table)
# =============================================================================

#known_faces = ["A","B","C"]
#insert(known_faces)

# =============================================================================
# dataSheet = [["table1","SHUBHAM","P","01:00:45","2:10:00"],["table1","ELONMUSK","A","01:09:45","1:10:00"],["table1","BILLGATES","P","01:00:45","2:10:00"]]
# for data in dataSheet:
#     update(data)
# =============================================================================
