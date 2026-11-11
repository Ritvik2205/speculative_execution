.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
or ecx, 62
and al, 33
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
js .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdi]
sbb bl, sil
and rdi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdi]
jp .bb_0.3
jmp .exit_0
.bb_0.3:
lea rcx, qword ptr [rbx + rax + 84]
test al, 48
sub sil, -18
sub cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
