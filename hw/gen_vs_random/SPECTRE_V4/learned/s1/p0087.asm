.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, cl
xchg al, dil
and bl, -119
and cl, dl
cmp ecx, 74
and rdi, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdi]
test cl, -31
and rax, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rax]
cmp dl, 95
neg al
sbb bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
