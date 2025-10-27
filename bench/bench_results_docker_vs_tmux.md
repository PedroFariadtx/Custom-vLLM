## Docker Llama 3.3
```sh
vllm bench serve --backend openai --base-url http://localhost:8081 --model neuralmagic-ent/Llama-3.3-70B-Instruct-quantized.w8a8 --dataset-name random --seed 12345
```

- Results:
============ Serving Benchmark Result ============
Successful requests:                     995       
Benchmark duration (s):                  58.46     
Total input tokens:                      1017465   
Total generated tokens:                  113245    
Request throughput (req/s):              17.02     
Output token throughput (tok/s):         1937.28   
Peak output token throughput (tok/s):    9950.00   
Peak concurrent requests:                995.00    
Total Token throughput (tok/s):          19343.04  
---------------Time to First Token----------------
Mean TTFT (ms):                          25851.94  
Median TTFT (ms):                        25415.16  
P99 TTFT (ms):                           51420.67  
-----Time per Output Token (excl. 1st token)------
Mean TPOT (ms):                          247.32    
Median TPOT (ms):                        258.26    
P99 TPOT (ms):                           400.67    
---------------Inter-token Latency----------------
Mean ITL (ms):                           239.53    
Median ITL (ms):                         377.35    
P99 ITL (ms):                            414.31    
==================================================


## TMUX Llama 3.3
```sh
vllm bench serve --backend openai --base-url http://localhost:8081 --model neuralmagic-ent/Llama-3.3-70B-Instruct-quantized.w8a8 --dataset-name random --seed 12345
```

- Results:
tip: install termplotlib and gnuplot to plot the metrics
============ Serving Benchmark Result ============
Successful requests:                     995       
Benchmark duration (s):                  58.33     
Total input tokens:                      1017465   
Total generated tokens:                  112813    
Request throughput (req/s):              17.06     
Output token throughput (tok/s):         1933.94   
Peak output token throughput (tok/s):    9915.00   
Peak concurrent requests:                995.00    
Total Token throughput (tok/s):          19376.18  
---------------Time to First Token----------------
Mean TTFT (ms):                          25828.63  
Median TTFT (ms):                        25409.51  
P99 TTFT (ms):                           51472.53  
-----Time per Output Token (excl. 1st token)------
Mean TPOT (ms):                          246.63    
Median TPOT (ms):                        254.84    
P99 TPOT (ms):                           399.59    
---------------Inter-token Latency----------------
Mean ITL (ms):                           238.63    
Median ITL (ms):                         377.76    
P99 ITL (ms):                            414.16    
==================================================