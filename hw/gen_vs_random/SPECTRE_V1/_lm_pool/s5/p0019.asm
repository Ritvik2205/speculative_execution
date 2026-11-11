.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -62
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 5
mov bl, cl
sbb al, 104
mov al, dl
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb eax, 1392087754
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 2
sub bx, 45
sub al, 63
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
