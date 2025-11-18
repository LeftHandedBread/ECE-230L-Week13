# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Summary
This week I learned about modulo counters and ripple counters.

## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?
The modulo counter toggles each time you reach the desired count. This means that the first time it rolls over, it will go high, and the second time it rolls over, it will go back to low. This means that in order for it to go high again, you need to reach the said count twice. 

### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?
I did some magic to make it start at all 1s, but my best guess is that since i'm tying count high and incrementing with the clock signal, the first tff will start out high, which means the second will start out high, which means the third will start out high. Then it will progressively toggle on the next clock signal.

### 3 - What width of ring counter would you use to get to an output of ~1KHz?
assuming we start with a 100MHZ signal and we want to reduce it to about 1KHZ, 100,000,000 / 1,000 = 100,000, log_2(100,000) = 16.6... This means that we would need a counter about 17 wide to bring our output down to under 1KHz

