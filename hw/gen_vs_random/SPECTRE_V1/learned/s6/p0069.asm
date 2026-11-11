.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 21 # instrumentation
adc cx, 99
xchg edx, ecx
and bl, al
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea dx, qword ptr [rdx]
cmp bl, sil
sub sil, -18
cmp si, -11
jnz .bb_0.2
jmp .exit_0
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
sub al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
