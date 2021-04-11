from datetime import datetime
from db import update_attendance

entry_time = None
exit_time = None

def markName(present_persons,IdToStatusDict):
    print("Checkpoint")
    now = datetime.now()
    for current_id in IdToStatusDict:
        matching_person = next((person for person in present_persons if person.Id is current_id),None)
        if matching_person:
            if IdToStatusDict[current_id] == 'P':
                continue
            IdToStatusDict[current_id] ='P'
            entry_time = now
            exit_time = None
        else: 
            if IdToStatusDict[current_id] == 'A':
                continue
            IdToStatusDict[current_id] ='A'
            exit_time = now
            entry_time = None
        update_attendance(current_id, IdToStatusDict[current_id],entry_time,exit_time)
        print(current_id,IdToStatusDict[current_id],entry_time,exit_time)   
            
      
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        