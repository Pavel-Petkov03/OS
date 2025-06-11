
Readers-Writers Problem — Three Implementations

This project contains **three different solutions** to the classic **Readers-Writers synchronization problem**, each tailored for different use cases. All implementations use the **Lightswitch pattern** (implicitly applied).

---

## 1. 📚 Reader-Priority (Writer Starvation)

- **Behavior:** Writers may starve if there is a continuous stream of readers.
- **Use case:** Ideal when the number of writers is **low** and reader throughput is prioritized.

---

## 2. ✍️ Writer-Priority (Reader Starvation)

- **Behavior:** Readers may starve if many writers continuously arrive.
- **Use case:** Useful when the number of readers is **low** and writer throughput is important.

---

## 3. ⚖️ Fairness (No Starvation)

- **Behavior:** No starvation for either readers or writers.
- **Mechanism:** Readers wait in a queue **after a waiting writer**, ensuring fair access.
- **Use case:** Best for **balanced workloads** of readers and writers.

---

All solutions use semaphores and synchronization primitives to implement their logic safely and efficiently, with the Lightswitch pattern guiding access control.
