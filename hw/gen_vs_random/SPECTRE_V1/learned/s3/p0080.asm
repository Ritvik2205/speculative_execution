.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, dl
and rcx, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rcx]
sub dl, 96
test al, -75
xchg edi, ecx
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
test sil, dl
xor dl, 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
