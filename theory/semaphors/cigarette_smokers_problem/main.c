#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <semaphore.h>
#include <unistd.h>
#include <stdbool.h>

// we have three agent threads
//    A_agent(sends matches and tabacoo)
//    B_agent(sends paper and tabacoo)
//    C_agent(sends paper and matches)
// we have three smoker threads
//    A_smoker(has paper)
//    B_smoker(has matches)
//    C_smoker(has tabacoo)
// we have three pushers(connectors between the two types)
//  A_pusher()
//  B_pusher()
//  C_pusher()

// in my opinion this solutions is bad because If we want to add new type of smoker
// we have to add new semaphor and signal and wait it in every thread type
// we can generalise ingredients names and to say that every n threads need n-1 ingredients
// depending on the ingredients we can generate threads
// but I am using c which cannot create functions runtime depending on list length
// so I may use python if I have time for this solution
// this solution is only for three

sem_t agent;
sem_t mutex;

sem_t tabacoo;
sem_t paper;
sem_t matches;

sem_t tabacoo_sem;
sem_t paper_sem;
sem_t matches_sem;


bool isPaper = false;
bool isMatches = false;
bool isTabacoo = false;

void* A_agent(void* c ){
    while(true){
        sem_wait(&agent);
        sem_post(&tabacoo);
        sem_post(&matches);
    }
}


void* B_agent(void* c){
    while(true){
        sem_wait(&agent);
        sem_post(&paper);
        sem_post(&tabacoo);
    }
}

void* C_agent(void* c){
    while(true){
        sem_wait(&agent);
        sem_post(&paper);
        sem_post(&matches);
    }
}

void* A_smoker(void* c){
    while(true){
        sem_wait(&tabacoo_sem);
        printf("Picha sus tabacoo si pravi cigarka da pafne\n");
        sleep(1);
        sem_post(&agent);
        printf("Picha sus tabacoo pafka cigarka\n");
    }
}

void* B_smoker(void* c){
    while(true){
        sem_wait(&matches_sem);
        printf("Picha sus matches si pravi cigarka da pafne\n");
        sleep(1);
        sem_post(&agent);
        printf("Picha sus matches pafka cigarka\n");
    }
}

void* C_smoker(void* c){
    while(true){
        sem_wait(&paper_sem);
        printf("Picha sus paper si pravi cigarka da pafne\n");
        sleep(1);
        sem_post(&agent);
        printf("Picha sus paper pafka cigarka\n");
    }
}

void* A_pusher(void* c){
    while(true){
        sem_wait(&paper);
        sem_wait(&mutex);
        if (isMatches){
            isMatches = false;
            sem_post(&tabacoo_sem);
        }
        else if(isTabacoo){
            isTabacoo = false;
            sem_post(&matches_sem);
        }else{
            isPaper = true;
        }
        sem_post(&mutex);
    }
}

void* B_pusher(void* c){
    while(true){
        sem_wait(&tabacoo);
        sem_wait(&mutex);
        if (isMatches){
            isMatches = false;
            sem_post(&paper_sem);
        }
        else if(isPaper){
            isPaper = false;
            sem_post(&matches_sem);
        }else{
            isTabacoo = true;
        }
        sem_post(&mutex);
    }
}

void* C_pusher(void* c){
    while(true){
        sem_wait(&matches);
        sem_wait(&mutex);
        if (isPaper){
            isPaper = false;
            sem_post(&tabacoo_sem);
        }
        else if(isTabacoo){
            isTabacoo = false;
            sem_post(&paper_sem);
        }else{
            isMatches = true;
        }
        sem_post(&mutex);
    }
}
// на практика след n-1 изпълнения на pushers се отваря smoker

int main(void) {
    sem_init(&agent, 0, 1);
    sem_init(&mutex, 0, 1);

    sem_init(&tabacoo, 0, 0);
    sem_init(&paper, 0, 0);
    sem_init(&matches, 0, 0);

    sem_init(&tabacoo_sem, 0, 0);
    sem_init(&paper_sem, 0, 0);
    sem_init(&matches_sem, 0, 0);

    pthread_t agents[3], smokers[3], pushers[3];

    pthread_create(&pushers[0], NULL, A_pusher, NULL);
    pthread_create(&pushers[1], NULL, B_pusher, NULL);
    pthread_create(&pushers[2], NULL, C_pusher, NULL);

    pthread_create(&smokers[0], NULL, A_smoker, NULL);
    pthread_create(&smokers[1], NULL, B_smoker, NULL);
    pthread_create(&smokers[2], NULL, C_smoker, NULL);

    while (true) {
        int r = rand() % 3;
        switch (r) {
            case 0:
                pthread_create(&agents[0], NULL, A_agent, NULL);
                break;
            case 1:
                pthread_create(&agents[1], NULL, B_agent, NULL);
                break;
            case 2:
                pthread_create(&agents[2], NULL, C_agent, NULL);
                break;
        }
        sleep(1); 
    }

    return 0;
}







































