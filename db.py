import mariadb
import pickle
from Person import Person

mydb = mariadb.connect(
    host = "localhost",
    user = "root",
    password = "12345",
    database = "Facial_Analysi_and_Record_Tracking"
    )
cursor = mydb.cursor()

''' PERSONS TABLE'''

def insert_person(person_name,roomid,img_name):
    sql = "INSERT INTO persons(name,roomid,imgName) VALUES (?,?,?)"
    val = (person_name,roomid,img_name)
    cursor.execute(sql,val)
    mydb.commit()
    print("Id of LastRow: ",cursor.lastrowid)
    return cursor.lastrowid

def delete_person(Id):
    sql = "DELETE FROM persons WHERE Id=?"
    val = (Id,)
    cursor.execute(sql,val)
    mydb.commit()
    print(f"Deleted {Id}")
    return "Success"

def get_person(Id):
    sql = "SELECT Id,roomid,name,imgName FROM persons WHERE Id=?"
    val = (Id,)
    cursor.execute(sql,val)
    out = cursor.fetchone()
    person_details = Person(out[0],out[1],out[2],out[3])
    return person_details

def get_persons_by_room(roomid):
    sql = "SELECT id,roomid,name,imgName FROM persons WHERE roomid=?"
    val = (roomid,)
    cursor.execute(sql,val)
    out = cursor.fetchall()
    persons = []
    for row in out:
        person = Person(row[0], row[1], row[2], row[3])
        persons.append(person)
    return persons
    
''' ROOMS TABLE '''

def get_room(roomid):
    sql = "SELECT * FROM rooms WHERE id=?"
    val = (roomid,)
    cursor.execute(sql,val)
    room = cursor.fetchone()
    return room
    

''' FACE_ENCODINGS TABLE'''

def insert_encoding(Id,encoding):
    blobjob = pickle.dumps(encoding)
    sql = "INSERT INTO face_encodings(PersonID,encoding) VALUES(?,?)"
    val = (Id,blobjob)
    cursor.execute(sql,val)
    mydb.commit()
    return cursor.lastrowid
    
def get_encoding(Id):
    sql = "SELECT encoding FROM face_encodings WHERE PersonID=?"
    val = (Id,)
    cursor.execute(sql,val)
    (blobjob,) = cursor.fetchone()
    encoding = pickle.loads(blobjob)
    return encoding


''' RECORDS TABLE'''

def insert_attendance_record(Pid,Rid,status,entryTime,exitTime):
    sql = "INSERT INTO records(PersonID,RoomID,Status,Entry_Time,Exit_Time) VALUES (?,?,?,?,?)"
    val = (Pid,Rid,status,entryTime,exitTime)
    cursor.execute(sql,val)
    mydb.commit()
    return cursor.lastrowid

def get_attendance_by_room(roomID):
    sql = "SELECT * FROM records WHERE roomid=?"
    val = (roomID,)
    cursor.execute(sql,val)
    out = cursor.fetchall()
    return out

def update_attendance(Pid,status,entry_time,exit_time):   
    if entry_time is None:
        sql = "UPDATE records SET Status=?,Exit_time=? WHERE PersonID = ?"
        val = (status,exit_time,Pid)
        cursor.execute(sql,val)
        mydb.commit()
    else:
        sql = "UPDATE records SET Status=?,Entry_Time=?,Exit_Time=? WHERE PersonID = ?"
        val = (status,entry_time,exit_time,Pid)
        cursor.execute(sql,val)
        mydb.commit()
        
    return "Success"
    
#insert_into_records("SHUBHAM","Shubham")