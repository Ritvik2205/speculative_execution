.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 99
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], ax
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 7
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], 97
add sil, -61
test bx, 40
jmp .bb_0.1
.bb_0.1:
xor cl, dl
and rcx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rcx]
and dil, -22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
