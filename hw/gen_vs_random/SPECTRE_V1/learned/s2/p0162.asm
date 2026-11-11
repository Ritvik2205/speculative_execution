.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 76
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
sub al, bl
adc ebx, 49
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
or al, 19
jns .bb_0.3
jmp .exit_0
.bb_0.3:
sbb dil, sil
mov bl, sil
sbb dl, dil
imul di, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
