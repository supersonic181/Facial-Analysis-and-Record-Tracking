import mariadb


mydb = mariadb.connect(
    host = "localhost",
    user = "root",
    password = "12345",
    database = "Facial_Analysi_and_Record_Tracking"
    )

cursor = mydb.cursor()
#cursor.execute("DROP TABLE Records,Persons,Rooms")
Person = '''CREATE TABLE Persons(
            PersonID int NOT NULL AUTO_INCREMENT,
            Name varchar(255) NOT NULL UNIQUE,
            PRIMARY KEY (Personid))'''

#cursor.execute(Person)


Room = '''CREATE TABLE Rooms(
        RoomID int NOT NULL AUTO_INCREMENT,
        Room_Name varchar(255) NOT NULL UNIQUE,
        Room_Location varchar(255) NOT NULL,
        Room_Type varchar(50) NOT NULL,
        PRIMARY KEY (Roomid))'''

#cursor.execute(Room)


Record = '''CREATE TABLE Records(
            PersonID int,
            RoomID int,
            Status varchar(2) NOT NULL,
            Entry_Time varchar(255),
            Exit_Time varchar(255),
            FOREIGN KEY (PersonID) REFERENCES Persons(PersonID),
            FOREIGN KEY (RoomID) REFERENCES Rooms(RoomID))'''

#cursor.execute(Record)




































