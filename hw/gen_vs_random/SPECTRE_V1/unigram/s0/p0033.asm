.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setno bl
and rbx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rbx], bx
cmovnb si, ax
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
xor dil, dl
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
sbb cl, -122
lea dx, qword ptr [rax + rsi + 13]
and rsi, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rsi]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
cwde
imul ebx, eax
and rcx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rcx]
sbb rax, 1380680934
adc dl, 64
btr cx, 15
add bl, 7 # instrumentation
cmovnl ecx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
