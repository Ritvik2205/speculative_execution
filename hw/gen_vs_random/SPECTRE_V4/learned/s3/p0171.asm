.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, -612395655
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
xor di, bx
cmp dil, bl
and rcx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rcx]
mov al, dil
and al, cl
and rcx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rcx]
sub al, 96
xor cl, bl
xor bx, -65
xor al, 23
adc dl, 51
sbb bx, 94
adc al, 116
sub cl, 18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
