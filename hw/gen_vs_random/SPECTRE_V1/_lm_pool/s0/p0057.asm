.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -47
lea rbx, qword ptr [rax + rsi + 38]
sbb sil, -78
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
adc al, sil
and rsi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rsi]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and al, bl
sub bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
