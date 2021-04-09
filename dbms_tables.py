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
            id int NOT NULL AUTO_INCREMENT,
            name varchar(255) NOT NULL ,
            imgName varchar(255) NOT NULL,
            PRIMARY KEY (id))'''

#cursor.execute(Person)


Room = '''CREATE TABLE Rooms(
        id int NOT NULL AUTO_INCREMENT,
        name varchar(255) NOT NULL,
        floorNo varchar(255) NOT NULL,
        type varchar(50) NOT NULL,
        PRIMARY KEY (id))'''

#cursor.execute(Room)


Record = '''CREATE TABLE Records(
            PersonID int,
            RoomID int,
            Status varchar(2) NOT NULL,
            Entry_Time varchar(255),
            Exit_Time varchar(255),
            FOREIGN KEY (PersonID) REFERENCES Persons(id),
            FOREIGN KEY (RoomID) REFERENCES Rooms(id))'''

#cursor.execute(Record)




































