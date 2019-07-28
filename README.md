# CacheSimulator

Implemented a cache simulator to evaluate different configurations of caches. It should be able to run with different traces files. The followings are the requirements for my cache simulator:
• Simulate only one level cache; i.e., an L1 cache.
• The cache size, associativity, the replacement policy, and the block size are input parameters.
Cache size and block size are specfied in bytes.
• Replacement algorithm: Least Recently Used (LRU). When a block needs to be replaced, the cache evicts the block that was accessed least recently. It does not take into account whether the block is frequently accessed.
• simulate a write through cache. 


A) <cache size>is the total size of the cache in bytes. This number should be a power of 2. 
B) <associativity> is one of:
  direct - simulate a direct mapped cache.
  assoc - simulate a fully associative cache.
  assoc:n - simulate an n way associative cache. n will be a power of 2.
C) <cache policy> Here is valid cache policy is lru.
D) <block size> is a power of 2 integer that specifies the size of the cache block in bytes.
E) <trace file>is the name of the trace file.
  
Program should check if all the inputs are in valid format, if not it prints error and then terminates the program.


The prefetcher is activated only on misses and it is not active on a cache hit. If the prefetched block is already in the cache, it does not issue a memory read. With respect to cache replacement policies, if the prefetched block hits in the cache, the line replacement policy status should not be updated. Otherwise, it is treated similar to a block that missed the cache.

The goal of the cache replacement policy is to decide which block has to be evicted in case there is no space in the set for an incoming cache block. It is always preferable - to achieve the best performance - to replace the block that will be re-referenced furthest in the future. There are different ways one can implement cache replacement policy. Here we use LRU replacement policy.

Sample Run
Program should print out the number of memory reads (per cache block), memory writes (per cache block), cache hits, and cache misses for normal cache and the cache with prefetcher.

$./first 32 assoc:2 lru 4 trace1.txt no-prefetch
Memory reads: 336
Memory writes: 334
Cache hits: 664 Cache misses: 336 with-prefetch Memory reads: 336 Memory writes: 334 Cache hits: 832 Cache misses: 168
