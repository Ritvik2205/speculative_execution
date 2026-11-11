.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec bx
cmp dil, -92
mov dil, dl
and di, -65
test rdx, -1074289902
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rcx]
add cl, bl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
sub dl, 107
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
