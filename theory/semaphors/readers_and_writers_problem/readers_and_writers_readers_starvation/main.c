//Puzzle: Write a solution to the readers-writers problem that gives priority
//to writers. That is, once a writer arrives, no readers should be allowed to enter
// until all writers have left the system.


// тъй като в тази задача ползвам lightswitch повече пъти ще си разпиша структура 

typedef struct {
    int counter;
    sem_t mutex;
} light_switch_t;

void light_switch_init(light_switch_t* current){
    current->counter = 0;
    sem_init(&current->mutex, 0, 1);
}

void light_switch_lock(light_switch_t* current, sem_t* lock){
    sem_wait(&current->mutex);
    current->counter++;
    if(current->counter = 1){
        sem_wait(lock);
    }
    sem_post(&current->mutex);
}

void light_switch_unlock(light_switch_t* current, sem_t* lock){
    sem_wait(&current->mutex);
    current->counter--;
    if(current->counter = 0){
        sem_post(lock);
    }
    sem_post(&current->mutex);
}

sem_t no_readers;
sem_t no_writers;
light_switch_t reader_switch;
light_switch_t writer_switch;


void* reader(void* id){
    sem_wait(&no_readers);
    light_switch_lock(&reader_switch, &no_writers);
    sem_post(&no_readers);
    //read
    light_switch_unlock(&reader_switch, &no_writers);
}

void* writer(void* id){
    
}

int main(){
    
}




