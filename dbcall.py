from dbms_insertion import insert_into_persons
import os


nameList = []
fileName = []

for dirpath,dnames,fnames in os.walk("./imgSource"):
    for file in fnames:
        if file.endswith(".jpg") or file.endswith(".png"):
            currentName = file.split(".")[0]
        nameList.append(currentName)
        fileName.append(file)
print(insert_into_persons(nameList,fileName))
