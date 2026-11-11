.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 37
cmp rcx, 63
and dl, cl
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 6
jmp .bb_0.1
.bb_0.1:
sbb cl, dl
jle .bb_0.2
jmp .exit_0
.bb_0.2:
lea rcx, qword ptr [rdi]
and rbx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rbx]
sub sil, -99
or al, dl
test eax, 645518295
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
