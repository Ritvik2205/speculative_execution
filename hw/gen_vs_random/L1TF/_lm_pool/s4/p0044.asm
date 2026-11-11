.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
xor al, 16
and rax, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rax]
or rsi, 12
sub cl, -49
or dil, dl
sbb dl, al
sbb eax, -403815802
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
xor sil, 64
jmp .bb_0.1
.bb_0.1:
and edi, 15
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
jmp .bb_0.2
.bb_0.2:
sbb dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
