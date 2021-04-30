#import concurrent.futures
import multiprocessing
from index import process

cameraINroom = {1:1,2:0}

    
def main():
# =============================================================================
#     with concurrent.futures.ProcessPoolExecutor() as executor:
#         for roomId in cameraINroom:
#             cameraNo = cameraINroom[roomId]
#             task = executor.submit(process, roomId, cameraNo)
#             print(task.result())
# =============================================================================
    processes = []
    for key in cameraINroom:
        value = cameraINroom[key]
        p = multiprocessing.Process(target=process, args=[key,value])
        p.start()
        processes.append(p)
        
    for pro in processes:
        pro.join()

if __name__ == '__main__':
    main()
    
     