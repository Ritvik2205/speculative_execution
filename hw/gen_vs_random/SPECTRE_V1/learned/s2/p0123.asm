.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdi]
sub cl, dil
js .bb_0.1
jmp .exit_0
.bb_0.1:
test cl, -120
and rax, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rax]
and dl, bl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], sil
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], bl
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
sbb sil, -78
lea rax, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
