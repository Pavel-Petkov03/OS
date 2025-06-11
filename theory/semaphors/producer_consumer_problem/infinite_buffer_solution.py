
# нямаме нужда от семафор за лимитация защото езика позволява така или иначе да заделяме памет
# докато не ни падне рамта ;)
import threading
import random
from collections import deque

buffer = deque()
mutex =  threading.Semaphore(1)
items = threading.Semaphore(0)


def producer(current):
    global buffer, mutex, items
    mutex.acquire()
    ch = chr(ord('a') + random.randint(0, 25))
    buffer.append(ch);
    print(f"Producer {current} puts {ch}")
    items.release()
    mutex.release()
                                            
def consumer(current): 
    global mutex, items, buffer
    items.acquire();
    mutex.acquire();
    ch = buffer.popleft() 
    print(f"Consumer {current} takes {ch}")
    mutex.release();




if __name__ == "__main__":
    i = 0
    while(True):
        random_bool = random.choice([True, False])
        func_ptr =  producer if random_bool else consumer
        current_thread = threading.Thread(target=func_ptr, args=(i,))
        current_thread.daemon = True
        current_thread.start()
        i += 1
