#include <stdio.h>
#include <pthread.h>
#include <semaphore.h>
#include <unistd.h>

sem_t mutex; // използваме за достъпване на критичната секция read_count
sem_t write_lock; // използваме за да знам дали е време за reading или writing;
int read_count = 0;

void* reader(void* arg1){
    int id = *((int*)arg1);
    sem_wait(&mutex);
    read_count++;

    if(read_count == 1){
        sem_wait(&write_lock);
    }

    sem_post(&mutex);
    printf("Reader %d is doing operation reading\n", id);
    sleep(1);
    printf("Reader %d is done on operation reading\n", id);
    
    sem_wait(&mutex);
    read_count--;
    if(read_count == 0){
        sem_post(&write_lock);
    }
    sem_post(&mutex);
}

void* writer(void* arg1){
    int id = *((int*)arg1);
    sem_wait(&write_lock);
    printf("Writer %d is doing operation writing\n", id);
    sleep(1);
    printf("Writer %d is done on operation writing\n", id);
    sem_post(&write_lock);
}




int main(void) {
    pthread_t treades[5];
    pthread_t twrites[5];
    int readers_ids[5] = {1, 2, 3, 4, 5};
    int writers_ids[5] = {1, 2, 3, 4, 5};

    sem_init(&mutex, 0, 1);
    sem_init(&write_lock, 0, 1);

    for (int i = 0; i < 5; i++) {
        pthread_create(&twrites[i], NULL, writer, &writers_ids[i]);
        pthread_create(&treades[i], NULL, reader, &readers_ids[i]);
    }

    for (int i = 0; i < 5; i++) {
        pthread_join(twrites[i], NULL);
        pthread_join(treades[i], NULL);
    }

    sem_destroy(&mutex);
    sem_destroy(&write_lock);

    return 0;
}

// проблема на това решение е, че имаме starvation над writers
// ako постоянно влизат нови readers те блокират writers и трябва да свършат за да можеш да пишем
// при програми с много readers and writers това е проблем



