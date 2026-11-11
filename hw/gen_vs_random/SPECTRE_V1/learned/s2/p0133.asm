.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 86 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rdi]
add sil, al
js .bb_0.1
jmp .exit_0
.bb_0.1:
and cl, 86
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
sub sil, -18
adc dil, 58
and al, dil
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
cmovb ax, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
