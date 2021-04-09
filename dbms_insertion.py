import mariadb

mydb = mariadb.connect(
    host = "localhost",
    user = "root",
    password = "12345",
    database = "Facial_Analysi_and_Record_Tracking"
    )
cursor = mydb.cursor()

def insert_into_persons(names,imgName):
    for name,imgN in zip(names,imgName):
        sql = "INSERT INTO persons(name,imgName) VALUES (?,?)"
        val = (name,imgN)
        cursor.execute(sql,val)
        mydb.commit()
        print(cursor.lastrowid)
    return "Success"

def insert_into_records(n,p):
    personID = cursor.execute(f"Select personid FROM persons WHERE Name='{n}'")
    roomID = cursor.execute(f"Select roomid FROM rooms WHERE room_name='{p}")
    print(personID,roomID)
    
#insert_into_records("SHUBHAM","Shubham")