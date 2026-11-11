.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdx, qword ptr [rcx]
sub dl, 96
add dil, al
or si, 42
mov dl, cl
and rbx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rbx]
sbb dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
