.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 29
and si, 99
test eax, -2032743474
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
sub dl, sil
test dil, -126
test bl, -92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
