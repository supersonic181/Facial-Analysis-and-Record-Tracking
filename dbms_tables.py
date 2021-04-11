import mariadb


mydb = mariadb.connect(
    host = "localhost",
    user = "root",
    password = "12345",
    database = "Facial_Analysi_and_Record_Tracking"
    )

cursor = mydb.cursor()
#cursor.execute("DROP TABLE records,persons,rooms")

Person = '''CREATE TABLE Persons(
            id int NOT NULL AUTO_INCREMENT,
            roomid int NOT NULL,
            name varchar(255) NOT NULL ,
            imgName varchar(255) NOT NULL,
            PRIMARY KEY (id),
            FOREIGN KEY (roomid) REFERENCES Rooms(id))'''

#cursor.execute(Person)


Room = '''CREATE TABLE Rooms(
        id int NOT NULL AUTO_INCREMENT,
        name varchar(255) NOT NULL,
        floorNo int NOT NULL,
        type varchar(50) NOT NULL,
        PRIMARY KEY (id))'''

#cursor.execute(Room)


Record = '''CREATE TABLE Records(
            PersonID int,
            RoomID int,
            Status varchar(2) NOT NULL,
            Entry_Time TIMESTAMP NULL DEFAULT NULL,
            Exit_Time TIMESTAMP NULL DEFAULT NULL,
            FOREIGN KEY (PersonID) REFERENCES Persons(id),
            FOREIGN KEY (RoomID) REFERENCES Rooms(id))'''

#cursor.execute(Record)

Face_Encodings = '''CREATE TABLE face_encodings(
                    PersonID int NOT NULL,
                    encoding blob NOT NULL,
                    FOREIGN KEY (PersonID) REFERENCES Persons(id))'''


cursor.execute(Face_Encodings)































