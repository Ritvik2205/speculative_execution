.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, 46
or al, -2
and rbx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rbx]
test cl, 94
or al, -48
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], -22
xor al, sil
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
xor al, 16
lea rax, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
sub eax, 98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
