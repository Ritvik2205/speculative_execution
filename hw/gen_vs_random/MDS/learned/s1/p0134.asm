.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
xor cl, -13
and rax, -1931765367
or dl, -89
and ax, 19224
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], esi
bts rbx, rdx
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
xor dil, -124
and rsi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rsi]
bt di, si
xor rcx, -2
xor cl, 83
xor cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
