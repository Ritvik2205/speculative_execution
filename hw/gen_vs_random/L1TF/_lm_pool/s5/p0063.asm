.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -104 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
sub dil, 87
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
and sil, 93
sub rdx, 73
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 3
xor dl, 19
and rax, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rax]
cmp cl, -89
test bl, 12
sub cl, 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
