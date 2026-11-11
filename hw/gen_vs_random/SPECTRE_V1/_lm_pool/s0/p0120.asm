.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, 96
add dl, cl
xor cl, bl
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 32
lea rax, qword ptr [rcx + rdx + 86]
and rdx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdx]
sub al, sil
jp .bb_0.2
jmp .exit_0
.bb_0.2:
add dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
