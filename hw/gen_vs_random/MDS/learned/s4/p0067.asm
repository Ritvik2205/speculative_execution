.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rax], ebx
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
bt si, dx
and dl, al
bt bx, dx
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
xor eax, 571592471
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and sil, -9
and di, 91
xor rax, -345061362
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
