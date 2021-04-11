from datetime import datetime
import pandas as pd
from db import update_attendace
#import csv

count = 1
entry_time = None
exit_time = None
def createDict(classNames):
    global count
    myDict = {}
    classNames.append("Unknown")
    with open("Attendance.csv",'w') as f:
        f.writelines('Slno,Name,Attendance,EntryTime,ExitTime')
        for key in classNames:
            myDict[key] = 'A'
            f.writelines(f'\n{count},{key},{myDict[key]}')
            count +=1
    
    print(myDict)
    return myDict
    

def markName(present_persons,IdToStatusDict):

    now = datetime.now()
    for current_id in IdToStatusDict:
        matching_person = next((person for person in present_persons if person.Id is current_id),None)
        if matching_person:
            if IdToStatusDict[current_id] == 'P':
                continue
            IdToStatusDict[current_id] ='P'
            entry_time = now.strftime('%H:%M:%S')
            exit_time = None
        else: 
            if IdToStatusDict[current_id] == 'A':
                continue
            IdToStatusDict[current_id] ='A'
            exit_time = now.strftime('%H:%M:%S')
            entry_time = None
        #update_attendance(current_id, IdToStatusDict[current_id],entry_time,exit_time)
        print(current_id,IdToStatusDict[current_id],entry_time,exit_time)   
            
        
    
def update_attendance(name,status,entry_time,exit_time):
    print(name,status,entry_time,exit_time)
    df = pd.read_csv('Attendance.csv')

    df.loc[df['Name']==name, ['Attendance', 'EntryTime','ExitTime']] = [status, entry_time, exit_time]

    df.to_csv('Attendance.csv', index=False)
    

# =============================================================================
#     now = datetime.now()
#     dtString = now.strftime('%H:%M:%S')
#     with open('Attendance.csv','w') as f:
#         f.writelines(f'\n{count},{name},{dtString},{myDict[name]}')
#         print(f'{count},{name},{dtString},{myDict[name]}')
# =============================================================================

      
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        