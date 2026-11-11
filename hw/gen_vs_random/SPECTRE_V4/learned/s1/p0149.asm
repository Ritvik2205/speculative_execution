.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, ax
xor cl, dl
cmovz esi, ecx
or bl, cl
sub dil, bl
or dl, -26
sub dil, bl
sbb al, -43
sub al, sil
or rdx, 1
xor al, cl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
xchg al, cl
and dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
