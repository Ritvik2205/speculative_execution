.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -103 # instrumentation
cmovbe dx, dx
sub sil, cl
or si, si
add al, 117
btr bx, 104
jmp .bb_0.1
.bb_0.1:
sbb bl, dil
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 76
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
cmovle rcx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
