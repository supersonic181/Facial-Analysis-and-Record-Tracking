import json
import os
import face_recognition as fr
import numpy

def read_encoded_data():
     with open('encoded_data.json') as f: 
         encoded_data = json.load(f)
         for k in encoded_data:
             encoded_data[k] = numpy.array(encoded_data[k])
     return encoded_data
 
def write_encoded_data(key,value):
    encoded_data = {}
    for k,v in zip(key,value):
        encoded_data[k] = v.tolist()
    
    with open('encoded_data.json', 'w') as f:
            json.dump(encoded_data, f)

def get_encoded_faces():
    """
    looks through the faces folder and encodes all
    the faces

    :return: dict of (name, image encoded)
    """
    encoded = {}

    for dirpath, dnames, fnames in os.walk("./imgSource"):
        for f in fnames:
            if f.endswith(".jpg") or f.endswith(".png"):
                face = fr.load_image_file("imgSource/" + f)
                encoding = fr.face_encodings(face)[0]
                encoded[f.split(".")[0]] = encoding
    key = list(encoded.keys())
    value = list(encoded.values())
    write_encoded_data(key,value)
    print("encoding complete")
    
    return encoded

# =============================================================================
# faces = get_encoded_faces()
# print(list(encoding.keys()))
# print(list(encoding.values()))
# =============================================================================
