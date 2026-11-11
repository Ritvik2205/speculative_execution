.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -36
setns cl
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
setb bl
xor dl, bl
adc dl, bl
adc bl, al
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and al, al
add al, -65
and bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
