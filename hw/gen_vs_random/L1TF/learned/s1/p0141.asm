.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 106
add bl, 68
or al, -5
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rax]
sub al, -75
xor bl, dl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], dil
or ax, dx
sbb al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
