.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 87
or dil, -76
bts di, 73
jmp .bb_0.1
.bb_0.1:
or dil, al
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edi
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
or al, -22
jmp .bb_0.2
.bb_0.2:
or rdi, -11
or bl, 127
and rax, 452940266
and ax, 19224
xor eax, 571592471
or cx, 39
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
and cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
