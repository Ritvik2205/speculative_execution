.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, sil
and rbx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
sbb dl, -26
and rcx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rcx]
jnbe .bb_0.2
jmp .exit_0
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
