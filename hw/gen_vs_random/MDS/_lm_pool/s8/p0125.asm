.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, dil
btc di, 164
or rsi, 29
xor cl, 98
and al, cl
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
and si, -121
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
and al, cl
bt cx, bx
jmp .bb_0.1
.bb_0.1:
test rbx, 82
test sil, -96
or rdx, -48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
