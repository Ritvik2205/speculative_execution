.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 41
mov cl, dil
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dil
mov cl, sil
and al, cl
and rcx, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rcx]
add al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
