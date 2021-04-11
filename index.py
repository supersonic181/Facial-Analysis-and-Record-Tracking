import face_recognition as fr
import os
import cv2
import numpy as np
import time
from db import get_persons_by_room,get_encoding,get_attendance_by_room

def classify_face(im,known_persons,known_encodings):
    
    img = cv2.imread(im, 1)
    present_persons = set()

    face_locations = fr.face_locations(img)
    unknown_face_encodings = fr.face_encodings(img, face_locations)

    for face_encoding in unknown_face_encodings:
    
        # See if the face is a match for the known face(s)
        matches = fr.compare_faces(known_encodings, face_encoding)
        #name = "Unknown"

        # use the known face with the smallest distance to the new face
        face_distances = fr.face_distance(known_encodings, face_encoding)
        best_match_index = np.argmin(face_distances)
        if matches[best_match_index]:
            person = known_persons[best_match_index]  
        present_persons.add(person)
        print(present_persons)
          
    return present_persons

roomid = 1
known_persons = get_persons_by_room(roomid)
known_encodings = []
for person in known_persons:
    encoding = get_encoding(person.Id)
    known_encodings.append(encoding)

idToStatusDict = {}
record = get_attendance_by_room(roomid)
for i in record:
    idToStatusDict[i[0]] = i[2]
    
cam = cv2.VideoCapture(1)
cv2.namedWindow("Image")
checker = 0

while True:
    ret, frame = cam.read()
    if not ret:
        print("failed to grab frame")
        break
    cv2.imshow("Image", frame)

    k = cv2.waitKey(1)
    
    if k%256 == 27:
        # ESC pressed
        print("Escape hit, closing...")
        break
    else:
        if checker<5:
            img_name = "1.png"
            cv2.imwrite(img_name, frame)
            names = classify_face(img_name,known_persons,known_encodings)
            markName(names,myDict)
            checker +=1
        else:
            checker = 0
            os.remove("1.png")
            time.sleep(5)

     
cam.release()     
