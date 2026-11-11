.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec dx
mov dl, cl
test sil, al
sub cl, sil
sbb al, dil
and rcx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
