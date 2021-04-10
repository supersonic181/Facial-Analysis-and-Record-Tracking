import random
import os
from os import path
from db import get_room,insert_person
import string
from encoding import add_encoding

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
    print(new_path)
    os.rename(imgPath,new_path)
    insert_person(name, roomid, imgName)
    add_encoding(name, new_path)
    
    return "User Registered"
        
 
print(register_user("ShubhamShaw", 5, "imgSource\ShubhamShawNbkJRXKV.jpg"))