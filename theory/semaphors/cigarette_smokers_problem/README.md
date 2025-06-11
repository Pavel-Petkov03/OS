Smokers Problem - C Implementation with Semaphores and Threads

## Overview

This project implements the classic **Smokers Problem** synchronization exercise using C, POSIX threads, and semaphores.

### Problem Description

- There are **three types of agents**, each placing two of three ingredients (paper, matches, tobacco) on the table.
- There are **three smokers**, each possessing an infinite supply of one ingredient.
- To smoke, a smoker needs the other two ingredients.
- **Pushers** are intermediary threads that monitor the availability of ingredients and signal the appropriate smoker when the missing ingredients are on the table.

## Implementation Details

- The program uses semaphores to synchronize between agents, pushers, and smokers.
- Each agent continuously places two ingredients on the table.
- Pushers detect the presence of ingredients and signal the smoker who has the missing third ingredient.
- Smokers wait for the signal to pick up the ingredients and "smoke".
- Mutex semaphore ensures safe access to shared state flags indicating ingredient availability.

## Design Notes

- The current solution handles exactly three ingredients and three smoker types.
- Adding more ingredients or smoker types would require redesigning the synchronization logic.
- The code runs infinite loops for agents, pushers, and smokers; it can be modified to run for a limited number of iterations or based on user input.
