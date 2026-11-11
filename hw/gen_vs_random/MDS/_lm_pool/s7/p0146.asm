.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -89
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
and ax, 339
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
jmp .bb_0.1
.bb_0.1:
test al, 91
and dl, cl
test cl, bl
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
xor dil, -124
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
xor al, 9
xor bl, 67
or sil, -49
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and rax, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
