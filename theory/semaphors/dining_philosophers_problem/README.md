Dining Philosophers Problem - C Implementation

## Overview

The problem simulates five philosophers sitting around a table, each alternating between thinking and eating. They share five forks (one between each philosopher). To eat, a philosopher must pick up both forks to their left and right. The challenge is to design a system that avoids deadlock and starvation.
In order to assume there is no starvation is this implementation there are two ways
-- we say that our scheduler will require we use strong semaphore(which means if we are process and we are waiting on semaphor, we will be unblocked in bounded time, so if we wait in queue if somebody else connects we will be before him)
-- the other implementation is forcing ours semaphores to be strong(We will put a queue ourselves)
-- I have implemented only the first one
-- If I have time I will implement the next


