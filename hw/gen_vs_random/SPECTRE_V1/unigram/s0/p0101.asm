.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc cx, 96
add cl, 29 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 80
and rsi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rsi]
dec dl
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -751147448
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], al
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], dil
mov al, al
lea rdi, qword ptr [rdx]
inc dl
and rcx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rcx]
dec cl
and rdx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdx], 73
cmovnbe ecx, edx
and rax, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
