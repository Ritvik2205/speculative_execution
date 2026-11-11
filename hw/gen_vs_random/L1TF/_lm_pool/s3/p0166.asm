.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec si
sbb cl, -11
and bl, 89
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 112
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
imul rdx
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], cl
and rcx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rcx]
adc al, -103
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
and sil, 37
lea ebx, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
