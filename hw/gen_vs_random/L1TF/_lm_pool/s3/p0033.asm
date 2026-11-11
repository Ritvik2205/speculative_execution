.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -122 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rax]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
cmp bl, 123
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rax]
xor ax, -16232
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
cbw
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 51
and rdi, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
