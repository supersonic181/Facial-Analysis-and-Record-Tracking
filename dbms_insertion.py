import mariadb
import os

mydb = mariadb.connect(
    host = "localhost",
    user = "root",
    password = "12345",
    database = "Facial_Analysi_and_Record_Tracking"
    )
cursor = mydb.cursor()

def insert_into_persons(names):
    for name in names:
        sql = "INSERT INTO persons(Name) VALUES (?)"
        val = (name,)
        cursor.execute(sql,val)
        mydb.commit()
        print(cursor.lastrowid)
    return "Success"

nameList = []

for dirpath,dnames,fnames in os.walk("./imgSource"):
    for file in fnames:
        if file.endswith(".jpg") or file.endswith(".png"):
            currentName = file.split(".")[0]
        nameList.append(currentName)
#print(insert_into_persons(nameList))


def insert_into_records(n,p):
    personID = cursor.execute(f"Select personid FROM persons WHERE Name='{n}'")
    roomID = cursor.execute(f"Select roomid FROM rooms WHERE room_name='{p}")
    print(personID,roomID)
    
insert_into_records("SHUBHAM","Shubham")