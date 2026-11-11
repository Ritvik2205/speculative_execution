.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdi]
xor al, -19
test dil, al
xor dl, -59
and rax, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
xor dil, bl
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
test rdx, 75
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], di
and dl, bl
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
xor ax, 31969
or dl, -89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
