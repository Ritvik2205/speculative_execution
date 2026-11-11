.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rax]
xor rax, 20
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
test al, -82
and cl, bl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdx]
xor sil, 64
sbb esi, 2
test al, bl
or sil, dil
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -44
adc dl, -12
xor cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
