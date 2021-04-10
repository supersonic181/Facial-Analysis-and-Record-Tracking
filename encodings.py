import json
import face_recognition as fr
import numpy

def read_encoded_data():
    encoded_data = {}
    try:
         with open('encoded_data.json') as f: 
             encoded_data = json.load(f)
             for k in encoded_data:
                 encoded_data[k] = numpy.array(encoded_data[k])
         return encoded_data
    except:
        return encoded_data
 
def write_encoded_data(key,value):
    encoded_data = {}
    for k,v in zip(key,value):
        encoded_data[k] = v.tolist()
    
    with open('encoded_data.json', 'w') as f:
            json.dump(encoded_data, f)

def add_encoding(name,imgPath):
    encoded = read_encoded_data()
    face = fr.load_image_file(imgPath)
    encoding = fr.face_encodings(face)[0]
    encoded[name] = encoding
    key = list(encoded.keys())
    
    value = list(encoded.values())
    write_encoded_data(key,value)
    print("encoding complete")
    
    return encoding

# =============================================================================
# faces = get_encoded_faces()
# print(list(encoding.keys()))
# print(list(encoding.values()))
# =============================================================================
