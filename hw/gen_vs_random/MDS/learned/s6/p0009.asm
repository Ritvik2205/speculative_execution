.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 86
or ecx, edi
or bl, cl
test dl, dil
xor bx, 21
jmp .bb_0.1
.bb_0.1:
or bl, dl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and bx, 69
xor dx, 97
xor ax, -12492
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
xor cl, al
test dl, 27
xor dl, 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
