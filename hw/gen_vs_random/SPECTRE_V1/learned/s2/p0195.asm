.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], sil
sub bl, dil
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
sub cl, bl
xchg rbx, rcx
sbb eax, -417098439
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
