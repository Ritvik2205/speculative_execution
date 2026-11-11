.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 34
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], di
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
and ax, 5001
jmp .bb_0.1
.bb_0.1:
or bl, dl
xor al, 55
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
test dil, -51
xor rbx, 89
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
xor rbx, 89
and al, cl
xor cl, sil
or al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
