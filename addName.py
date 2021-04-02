from datetime import datetime
import pandas as pd
#import csv

count = 1
entry_time = '00:00:00'
exit_time = '00:00:00'
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
    

def markName(names,myDict):
    global entry_time
    global exit_time
    now = datetime.now()
    for name in myDict:
      if name in names:
        myDict[name] = 'P'
        entry_time = now.strftime('%H:%M:%S')
      else:
        myDict[name] = 'A'
        exit_time = now.strftime('%H:%M:%S')
    update_attendance(name, myDict[name],entry_time,exit_time)
    print(myDict)
    
def update_attendance(name,status,entry_time,exit_time):
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

      
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        