.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], 29
lea rsi, qword ptr [rdx + rdx]
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rsi]
add dl, bl
or esi, -74
sbb edi, esi
sbb al, -114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
