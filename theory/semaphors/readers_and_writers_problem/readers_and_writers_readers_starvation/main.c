#include <stdio.h>
#include <pthread.h>
#include <semaphore.h>
#include <unistd.h>


//Puzzle: Write a solution to the readers-writers problem that gives priority
//to writers. That is, once a writer arrives, no readers should be allowed to enter
// until all writers have left the system.


// тъй като в тази задача ползвам lightswitch повече пъти ще си разпиша структура 


sem_t no_writers;
sem_t no_readers;

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
    if(current->counter == 1){
        sem_wait(lock);
    }
    sem_post(&current->mutex);
}

void light_switch_unlock(light_switch_t* current, sem_t* lock){
    sem_wait(&current->mutex);
    current->counter--;
    if(current->counter == 0){
        sem_post(lock);
    }
    sem_post(&current->mutex);
}

void light_switch_destroy(light_switch_t* current){
    sem_destroy(&current->mutex);
}

sem_t no_readers;
sem_t no_writers;
light_switch_t reader_switch;
light_switch_t writer_switch;


void* reader(void* id){
    int current = *((int*)id);
    sem_wait(&no_readers);
    light_switch_lock(&reader_switch, &no_writers);
    sem_post(&no_readers);
    printf("Reader starts reading with id %d\n", current);
    sleep(1);
    printf("Reader ends reading with id %d\n", current);
    light_switch_unlock(&reader_switch, &no_writers);
}

void* writer(void* id){
    int current = *((int*)id);
    light_switch_lock(&writer_switch, &no_readers);
    sem_wait(&no_writers);
    printf("Writer starts reading with id %d\n", current);
    sleep(1);
    printf("Writer ends reading with id %d\n", current);

    sem_post(&no_writers);
    light_switch_unlock(&writer_switch, &no_readers);
}

int main(void) {
    pthread_t treades[5];
    pthread_t twrites[5];
    int readers_ids[5] = {1, 2, 3, 4, 5};
    int writers_ids[5] = {1, 2, 3, 4, 5};
    
    sem_init(&no_readers, 0, 1);
    sem_init(&no_writers, 0, 1);
    light_switch_init(&reader_switch);
    light_switch_init(&writer_switch);

    for (int i = 0; i < 5; i++) {
        pthread_create(&twrites[i], NULL, writer, &writers_ids[i]);
        pthread_create(&treades[i], NULL, reader, &readers_ids[i]);
    }

    for (int i = 0; i < 5; i++) {
        pthread_join(twrites[i], NULL);
        pthread_join(treades[i], NULL);
    }

    light_switch_destroy(&reader_switch);
    light_switch_destroy(&writer_switch);
    sem_destroy(&no_writers);
    sem_destroy(&no_readers);
    return 0;
}



