.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, -5
sbb dil, sil
and rcx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 40
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
bt edx, ebx
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
add bl, 68
test cl, 78
and edi, 69
test cl, 9
xor eax, 965442135
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
