.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 96
sbb dil, bl
setb bl
lea ax, qword ptr [rbx + rdx + 62]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
test bl, 12
sbb esi, 73
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
add edx, 56
and rsi, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rsi]
test al, -56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
