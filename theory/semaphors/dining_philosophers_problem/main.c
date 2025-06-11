#include <stdio.h>
#include <pthread.h>
#include <semaphore.h>
#include <unistd.h>
#include <stdbool.h>
#define PHILOSOPHERS_COUNT 5


sem_t multiplex;
sem_t forks[ PHILOSOPHERS_COUNT];

int left(int current){
    return (current + 1) % PHILOSOPHERS_COUNT;
}
int right(int current){
    return current;
}

void get_forks(int current){
    sem_wait(&multiplex);
    sem_wait(&forks[left(current)]);
    sem_wait(&forks[right(current)]);
}

void put_forks(int current){
    sem_post(&multiplex);
    sem_post(&forks[left(current)]);
    sem_post(&forks[right(current)]);
}

void* philosopher_thread(void* id){
    int current = *((int*)id);
    while(true){
        printf("Philosopher with id %d is thinking\n", current);
        sleep(1);
        get_forks(current);
        printf("Philosopher with id %d is eating\n", current);
        put_forks(current);
        sleep(1);
    }
}

int main(void){
    sem_init(&multiplex, 0, PHILOSOPHERS_COUNT - 1);
    for(int i = 0; i < PHILOSOPHERS_COUNT; i++){
        sem_init(&forks[i], 0, 1);
    }
    int threads_ids[PHILOSOPHERS_COUNT] = {1,2,3,4,5};
	pthread_t threads[5];
	for(int i =0; i < PHILOSOPHERS_COUNT; i++){
 		pthread_create(&threads[i], NULL, philosopher_thread, &threads_ids[i]);
	}
	for(int i =0; i < PHILOSOPHERS_COUNT; i++){
          pthread_join(threads[i], NULL);
    }
	sem_destroy(&multiplex);
	for(int i = 0; i < PHILOSOPHERS_COUNT; i++){
		sem_destroy(&forks[i]);
	}
}

