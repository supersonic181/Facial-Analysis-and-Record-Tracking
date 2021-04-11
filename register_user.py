import random
import os
from os import path
import face_recognition as fr
from db import get_room,insert_person,insert_encoding
import string

def register_user(name,roomid,imgPath):
    if name == '' or name.isdigit() or name is None:
        return "Invalid Name"
    if not path.exists(imgPath):
        return "Invalid ImgPath"
    if get_room(roomid) is None:
        return "Invalid roomid"
    
    fileName = os.path.basename(imgPath).split(".")
    imgName,imgExt = fileName[0],fileName[1]
    imgName = name + ''.join(random.choice(string.ascii_letters) for i in range(8)) + "." + imgExt
    print(imgName)
    
    new_path = os.path.join("imgSource", imgName)
    face = fr.load_image_file(imgPath)
    encoding = fr.face_encodings(face)[0]

    
    os.rename(imgPath,new_path)
    Id = insert_person(name, roomid, imgName)
    insert_encoding(Id, encoding)
    
    return "User Registered"
        
 
print(register_user("BillGates", 1, "imgSource\BillGatesITXpCnEp.jpg"))