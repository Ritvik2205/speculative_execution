.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 29
test sil, 29
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], dx
add ax, 116
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], -4
xor cl, sil
jmp .bb_0.4
.bb_0.4:
jp .bb_0.5
jmp .bb_0.6
.bb_0.5:
cmp dil, 31
jmp .bb_0.6
.bb_0.6:
xchg dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
