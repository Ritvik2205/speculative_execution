.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -49
and rdi, 55
or sil, -78
or cl, cl
xor bl, -61
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
and bx, 21
and dil, -39
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
