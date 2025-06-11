Dining Philosophers Problem - C Implementation

## Overview

This project simulates the classic **Dining Philosophers Problem** using C and semaphores. The simulation involves five philosophers sitting around a table, each alternating between **thinking** and **eating**. They share five forks placed between each pair of adjacent philosophers. A philosopher must acquire both forks adjacent to them before eating.

## Starvation and Fairness

To ensure **no philosopher starves**, this implementation relies on one of two approaches:

1. **Strong Semaphore Scheduling**  
   We assume the underlying scheduler provides *strong semaphores*. This means when a process/thread waits on a semaphore, it will be unblocked within a bounded time, ensuring fairness and preventing indefinite waiting (starvation).

2. **Explicit Fairness Queue (Not yet implemented)**  
   Another approach is to enforce fairness ourselves by managing a queue of waiting philosophers to guarantee bounded waiting times. This implementation is planned but not currently available.

## Current Status

- The current version implements the **first approach**, relying on strong semaphore guarantees provided by the OS.
- Future work includes implementing the queue-based semaphore to enforce strict fairness.


