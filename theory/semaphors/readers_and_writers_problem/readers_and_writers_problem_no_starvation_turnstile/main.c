#include <stdio.h>
#include <pthread.h>
#include <semaphore.h>
#include <unistd.h>

sem_t turnstile;
sem_t mutex;
sem_t write_lock;
int count = 0;

void* writer(void* id){
    int current = *((int*)id);
    sem_wait(&turnstile);
    sem_wait(&write_lock);
    printf("Writer starts writing with id %d\n", current);
    sleep(1);
    printf("Writer ends writing with id %d\n", current);
    sem_post(&turnstile);
    sem_post(&write_lock);

}

void* reader(void* id){
    int current = *((int*)id);
    sem_wait(&turnstile); // ако writer е минал turnstile и write_lock това значи че всички са прочели и следващите които влизат са в queue след writer
    sem_post(&turnstile); // по този начин няма starvation на writer
    sem_wait(&mutex);
    count++;
    if(count == 1){
        sem_wait(&write_lock);
    }
    sem_post(&mutex);
    printf("Reader starts reading with id %d\n", current);
    sleep(1);
    printf("Reader ends reading with id %d\n", current);
    sem_wait(&mutex);
    count--;
    if(count == 0){
        sem_post(&write_lock);
    }
    sem_post(&mutex);
}


int main(void) {
    pthread_t treades[5];
    pthread_t twrites[5];
    int readers_ids[5] = {1, 2, 3, 4, 5};
    int writers_ids[5] = {1, 2, 3, 4, 5};

    sem_init(&mutex, 0, 1);
    sem_init(&write_lock, 0, 1);
    sem_init(&turnstile, 0, 1);

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
    sem_destroy(&turnstile);

    return 0;
}
