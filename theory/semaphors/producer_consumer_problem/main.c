#include <stdio.h>
#include <pthread.h>
#include <semaphore.h>
#include <unistd.h>

#define MAX_SIZE 100

sem_t items; // starts 0
sem_t mutex; // starts 1(simplex pattern)
sem_t max_counter; // starts 100(multiplex pattern)
char buffer[MAX_SIZE]; // buffer 
int current_size = 0;

void* producer(void* id){
    int current = *((int*)id);
    sem_wait(&max_counter);
    sem_wait(&mutex);
    char ch = 'a' + rand() % 26;
    printf("Producer with id %d puts %c\n", current, ch);
    buffer[current_size] = ch;
    current_size++;
    sem_post(&items);
    sem_post(&mutex);
}

void* consumer(void* id){
    int current = *((int*)id);
    sem_wait(&items);
    sem_wait(&mutex);
    char ch = buffer[current_size - 1];
    printf("Consumer with id %d takes %c\n", current, ch);
    current_size--;
    sem_post(&max_counter);
    sem_post(&mutex);
}

int main(void){
    srand(time(NULL));
    pthread_t tconsumer[5];
    pthread_t tproducer[5];
    int consumer_ids[5] = {1, 2, 3, 4, 5};
    int producer_ids[5] = {1, 2, 3, 4, 5};

    sem_init(&mutex, 0, 1);
    sem_init(&items, 0, 0);
    sem_init(&max_counter, 0, MAX_SIZE);

    for (int i = 0; i < 5; i++) {
        pthread_create(&tproducer[i], NULL, producer, &producer_ids[i]);
        pthread_create(&tconsumer[i], NULL, consumer, &consumer_ids[i]);
    }

    for (int i = 0; i < 5; i++) {
        pthread_join(tproducer[i], NULL);
        pthread_join(tconsumer[i], NULL);
    }

    sem_destroy(&mutex);
    sem_destroy(&items);
    sem_destroy(&max_counter);

    return 0;
}

