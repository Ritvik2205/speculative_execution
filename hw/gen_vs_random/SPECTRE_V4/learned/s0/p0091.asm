.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -81
add al, dil
and dil, -23
and rax, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rax]
sub dl, sil
add esi, 77
sub dil, 65
sbb cl, 12
and cx, -117
cmp cl, sil
and rsi, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rsi]
test sil, cl
and rcx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rcx]
xor si, -73
test al, dil
and rbx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rbx]
and dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
