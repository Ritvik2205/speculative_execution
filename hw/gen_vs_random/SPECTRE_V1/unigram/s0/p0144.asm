.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -47 # instrumentation
sbb al, 60
add sil, 107 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rsi]
add bl, -9 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rbx]
add cl, -119 # instrumentation
adc al, bl
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], di
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], ax
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], rdx
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], al
and rsi, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 25
and rsi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rsi]
imul cl
not bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
