.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, dl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sub al, -89
and rcx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rcx]
adc eax, 34
lea di, qword ptr [rcx + rax + 91]
and al, -54
sub bl, -6
and rdi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdi]
cmp bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
