def process(roomid,cameraNo):
    import face_recognition as fr
    import os
    import cv2
    import numpy as np
    import time
    from addName import markName
    from db import get_persons_by_room,get_encoding,get_attendance_by_room
    
    def classify_face(im,known_persons,known_encodings):
        
        img = cv2.imread(im, 1)
        present_persons = set()
    
        face_locations = fr.face_locations(img)
        unknown_face_encodings = fr.face_encodings(img, face_locations)
    
        for unknown_encoding in unknown_face_encodings:
            matches = fr.compare_faces(known_encodings, unknown_encoding)
    
            face_distances = fr.face_distance(known_encodings, unknown_encoding)
            best_match_index = np.argmin(face_distances)
            if matches[best_match_index]:
                person = known_persons[best_match_index]  
                present_persons.add(person)
                print(person.Id,person.name)
              
        return present_persons
    
    #roomid = 1
    known_persons = get_persons_by_room(roomid)
    known_encodings = []
    for person in known_persons:
        encoding = get_encoding(person.Id)
        known_encodings.append(encoding)
    print("Got known_encodings")
    
    idToStatusDict = {}
    record = get_attendance_by_room(roomid)
    for i in record:
        idToStatusDict[i[0]] = i[2]
    print("Finished idToStatusDict")
    
    cam = cv2.VideoCapture(cameraNo)
    cv2.namedWindow("Image")
    checker = 0
    
    while True:
        ret, frame = cam.read()
        cv2.waitKey(1)
        if not ret:
            print("failed to grab frame")
            break
        cv2.imshow("Image", frame)
    
        if checker<5:
            img_name = str(roomid) + "1.png"
            cv2.imwrite(img_name, frame)
            present_persons = classify_face(img_name,known_persons,known_encodings)
            print("classify img call successful")
            markName(present_persons,idToStatusDict)
            print("Markname call success")
            checker +=1
        else:
            checker = 0
            os.remove(img_name)
            time.sleep(1)
         
    cam.release()     
    
