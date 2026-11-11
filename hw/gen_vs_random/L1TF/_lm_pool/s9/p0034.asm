.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rdx]
add bl, 68
sub dl, -49
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 53
xor al, 16
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
test sil, cl
jmp .bb_0.3
.bb_0.3:
test cl, 66
jmp .bb_0.4
.bb_0.4:
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], -25
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
sub al, -97
sub al, 26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
