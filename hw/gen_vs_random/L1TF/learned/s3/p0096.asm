.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rsi]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 98
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
test al, 15
test edx, -541774418
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
sbb al, sil
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 68
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
sbb dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
