.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rdx, 86
test al, cl
test dil, -80
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -4
xor bl, 67
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
and dil, dil
test cl, 101
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
jmp .bb_0.1
.bb_0.1:
or dil, bl
xor sil, 27
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
and eax, 366961170
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
and rax, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
