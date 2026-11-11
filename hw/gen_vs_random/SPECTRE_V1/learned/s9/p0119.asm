.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], dx
or al, bl
or al, dl
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub al, bl
and rsi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
jno .bb_0.3
jmp .exit_0
.bb_0.3:
and cl, dil
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], cl
sbb dil, -106
add dil, dil
btc edi, 52
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
