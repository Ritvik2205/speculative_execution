.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
add cl, -127
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 7
add cl, dil
add cl, cl
and rsi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rsi]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
sub dl, sil
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], sil
lea cx, qword ptr [rbx]
adc al, -92
lea rbx, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
