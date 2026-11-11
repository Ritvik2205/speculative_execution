.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdi]
xor sil, 64
sub cl, 86
or al, -57
jnl .bb_0.1
jmp .bb_0.2
.bb_0.1:
adc dl, -12
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 72
and rcx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rcx]
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
movzx rax, byte ptr [r14 + rbx]
sbb dil, 80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
