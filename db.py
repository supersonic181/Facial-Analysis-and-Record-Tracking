import mariadb
from Person import Person

mydb = mariadb.connect(
    host = "localhost",
    user = "root",
    password = "12345",
    database = "Facial_Analysi_and_Record_Tracking"
    )
cursor = mydb.cursor()

''' INSERT PERSON NAME,IMGNAME INTO PERSON TABLE'''

def insert_person(person_name,roomid,img_name):
    sql = "INSERT INTO persons(name,roomid,imgName) VALUES (?,?,?)"
    val = (person_name,roomid,img_name)
    cursor.execute(sql,val)
    mydb.commit()
    print("Id of LastRow: ",cursor.lastrowid)
    return "Success"

def delete_person(Id):
    sql = "DELETE FROM persons WHERE Id=?"
    val = (Id,)
    cursor.execute(sql,val)
    mydb.commit()
    print(f"Deleted {Id}")
    return "Success"

def get_person(Id):
    sql = "SELECT Id,name,imgName FROM persons WHERE Id=?"
    val = (Id,)
    cursor.execute(sql,val)
    out = cursor.fetchone()
    person_details = Person(out[0],out[1],out[2])
    return person_details
    

#person_details = get_person(4)
#print(person_details.Id,person_details.name,person_details.imgName)


def insert_attendance_record(Pid,Rid,status,entryTime,exitTime):
    sql = "INSERT INTO records(PersonID,RoomID,Status,Entry_Time,Exit_Time) VALUES (?,?,?,?,?)"
    val = (Pid,Rid,status,entryTime,exitTime)
    cursor.execute(sql,val)
    mydb.commit()
    return "Success"

def get_attendance_by_room(roomID):
    sql = "SELECT * FROM records WHERE roomid=?"
    val = (roomID,)
    cursor.execute(sql,val)
    out = cursor.fetchall()
    return out

def update_attendace(Pid,status,entry_time,exit_time):   
    if entry_time is None:
        sql = "UPDATE records SET (status,exit_time) VALUES (?,?) WHERE personID = ?"
        val = (status,exit_time,Pid)
        cursor.execute(sql,val)
        mydb.commit()
    else:
        sql = "UPDATE records SET (status,entry_time,exit_time) VALUES (?,?,?) WHERE personID = ?"
        val = (status,entry_time,exit_time,Pid)
        cursor.execute(sql,val)
        mydb.commit()
        
    return "Success"
    
#insert_into_records("SHUBHAM","Shubham")