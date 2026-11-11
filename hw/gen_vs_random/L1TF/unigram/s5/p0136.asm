.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, bl
and rax, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], cx
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rbx], di
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
mov cl, 93
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -44
lea ebx, qword ptr [rbx + rdx]
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], ax
add sil, 98 # instrumentation
inc sil
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], 29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
