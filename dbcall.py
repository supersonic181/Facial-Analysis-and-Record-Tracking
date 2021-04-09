from db import insert_person
import os


nameList = []
fileName = []

for dirpath,dnames,fnames in os.walk("./imgSource"):
    for file in fnames:
        if file.endswith(".jpg") or file.endswith(".png"):
            currentName = file.split(".")[0]
        nameList.append(currentName)
        fileName.append(file)
        
for name,imgName in zip(nameList,fileName):
    roomid = 1
    print(insert_person(name,roomid,imgName))
