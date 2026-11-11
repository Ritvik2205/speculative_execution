.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
and rax, -2058103810
xor al, 115
or al, dil
not cl
bt di, bx
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
and dil, 125
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
or al, -24
test dil, 46
test sil, al
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
jmp .bb_0.1
.bb_0.1:
and eax, -829294476
and rdi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
