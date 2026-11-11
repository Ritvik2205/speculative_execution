.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
xor al, 34
and rsi, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rsi]
test al, -7
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
and sil, bl
xor bl, sil
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
and dx, 60
test al, dil
and cl, -71
and sil, 89
btc bx, 104
or bl, 43
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
xor ax, -12492
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
