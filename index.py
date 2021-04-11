import face_recognition as fr
import os
import cv2
import numpy as np
import time
from db import get_persons_by_room,get_encoding

# =============================================================================
# def classify_face(im):
#     
#     img = cv2.imread(im, 1)
#     current_names = set()
# 
#     face_locations = fr.face_locations(img)
#     unknown_face_encodings = fr.face_encodings(img, face_locations)
# 
#     for face_encoding in unknown_face_encodings:
#     
#         # See if the face is a match for the known face(s)
#         matches = fr.compare_faces(faces_encoded, face_encoding)
#         name = "Unknown"
# 
#         # use the known face with the smallest distance to the new face
#         face_distances = fr.face_distance(faces_encoded, face_encoding)
#         best_match_index = np.argmin(face_distances)
#         if matches[best_match_index]:
#             name = known_face_names[best_match_index]  
#         current_names.add(name)
#         print(current_names)
#           
#     return current_names
# =============================================================================

roomid = 1
known_persons = get_persons_by_room(roomid)
known_encodings = []
for person in known_persons:
    encoding = get_encoding(person.Id)
    known_encodings.append(encoding)
    
# =============================================================================
# cam = cv2.VideoCapture(1)
# cv2.namedWindow("Image")
# checker = 0
# 
# while True:
#     ret, frame = cam.read()
#     if not ret:
#         print("failed to grab frame")
#         break
#     cv2.imshow("Image", frame)
# 
#     k = cv2.waitKey(1)
#     
#     if k%256 == 27:
#         # ESC pressed
#         print("Escape hit, closing...")
#         break
#     else:
#         if checker<5:
#             img_name = "1.png"
#             cv2.imwrite(img_name, frame)
#             names = classify_face(img_name)
#             markName(names,myDict)
#             checker +=1
#         else:
#             checker = 0
#             os.remove("1.png")
#             time.sleep(5)
# 
#      
# cam.release()     
# =============================================================================
