import mariadb
from Person import Person

mydb = mariadb.connect(
    host = "localhost",
    user = "root",
    password = "12345",
    database = "Facial_Analysi_and_Record_Tracking"
    )
cursor = mydb.cursor()

def insert_person(person_name,img_name):
    sql = "INSERT INTO persons(name,imgName) VALUES (?,?)"
    val = (person_name,img_name)
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
    

person_details = get_person(4)
print(person_details.Id,person_details.name,person_details.imgName)










def insert_into_records(n,p):
    personID = cursor.execute(f"Select personid FROM persons WHERE Name='{n}'")
    roomID = cursor.execute(f"Select roomid FROM rooms WHERE room_name='{p}")
    print(personID,roomID)
    
#insert_into_records("SHUBHAM","Shubham")