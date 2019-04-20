.Orig x3000
INIT_CODE
LEA R6, #-1
ADD R5, R6, #0
ADD R6, R6, R6
ADD R6, R6, R6
ADD R6, R6, R5
ADD R6, R6, #-1
ADD R5, R5, R5
ADD R5, R6, #0
LD R4, GLOBAL_DATA_POINTER
LD R7, GLOBAL_MAIN_POINTER
jsrr R7
HALT

GLOBAL_DATA_POINTER .FILL GLOBAL_DATA_START
GLOBAL_MAIN_POINTER .FILL main
;;;;;;;;;;;;;;;;;;;;;;;;;;;;main;;;;;;;;;;;;;;;;;;;;;;;;;;;;
main
ADD R6, R6, #-2
STR R7, R6, #0
ADD R6, R6, #-1
STR R5, R6, #0
ADD R5, R6, #-1

ADD R6, R6, #-3
ADD R7, R4, #7
ldr R7, R7, #0
str R7, R5, #0
ADD R7, R4, #6
ldr R7, R7, #0
str R7, R5, #-1
ldr R7, R5, #-1
ADD R6, R6, #-1
STR R7, R6, #0
ldr R7, R5, #0
ADD R6, R6, #-1
STR R7, R6, #0
ADD R0, R4, #1
LDR R0, R0, #0
jsrr R0
LDR R7, R6, #0
ADD R6, R6, #1
str R7, R5, #-2
ADD R7, R4, #5
ldr R7, R7, #0
lc3_L1_first
STR R7, R5, #3
ADD R6, R5, #1
LDR R5, R6, #0
ADD R6, R6, #1
LDR R7, R6, #0
ADD R6, R6, #1
RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;sum;;;;;;;;;;;;;;;;;;;;;;;;;;;;
lc3_sum
ADD R6, R6, #-2
STR R7, R6, #0
ADD R6, R6, #-1
STR R5, R6, #0
ADD R5, R6, #-1

ADD R6, R6, #-4
ADD R7, R4, #4
ldr R7, R7, #0
str R7, R5, #0
ADD R7, R4, #3
ldr R7, R7, #0
str R7, R5, #-1
ldr R7, R5, #0
ldr R3, R5, #-1
add R7, R7, R3
str R7, R5, #-2
ldr R7, R5, #5
ldr R3, R5, #4
add R7, R7, R3
ldr R3, R5, #-2
ADD R6, R6, #-1
STR R0, R6, #0
ADD R6, R6, #-1
STR R3, R6, #0
NOT R3, R3
ADD R3, R3, #1
ADD R0, R7, R3
LDR R3, R6, #0
ADD R6, R6, #1
ADD R7, R0, #0
LDR R0, R6, #0
ADD R6, R6, #1
str R7, R5, #-3
ldr R7, R5, #-3
lc3_L5_first
STR R7, R5, #3
ADD R6, R5, #1
LDR R5, R6, #0
ADD R6, R6, #1
LDR R7, R6, #0
ADD R6, R6, #1
RET


GLOBAL_DATA_START
L1_first .FILL lc3_L1_first
sum .FILL lc3_sum
L5_first .FILL lc3_L5_first
L7_first .FILL #7
L6_first .FILL #9
L4_first .FILL #84
L3_first .FILL #2
L2_first .FILL #3
.END
