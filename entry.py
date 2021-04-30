import concurrent.futures
from index import process

cameraINroom = {1:1,2:0}

    
def main():
    with concurrent.futures.ProcessPoolExecutor() as executor:
        for roomId in cameraINroom:
            cameraNo = cameraINroom[roomId]
            task = executor.submit(process, roomId, cameraNo)
            print(task.result())

if __name__ == '__main__':
    main()
    
     