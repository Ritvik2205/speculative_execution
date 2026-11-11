.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -26
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 28
and rsi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rsi]
and rdi, 60
or rcx, 54
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
test bl, -14
jmp .bb_0.1
.bb_0.1:
xor si, 80
or cl, al
and sil, dl
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
