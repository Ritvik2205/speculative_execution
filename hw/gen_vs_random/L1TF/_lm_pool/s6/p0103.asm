.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], -23
xor rbx, 88
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx], 39
setnb sil
jmp .bb_0.1
.bb_0.1:
test bl, 45
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], sil
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
jmp .bb_0.2
.bb_0.2:
test cl, 46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
