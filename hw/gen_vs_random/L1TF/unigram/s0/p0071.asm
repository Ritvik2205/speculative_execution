.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb rdx, 98
lea si, qword ptr [rsi]
dec ebx
xor sil, 64
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rax], ax
adc cl, bl
and cl, 13
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rdx]
movzx ebx, dl
sub dl, 41
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
test dil, -126
add bl, 4 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], dx
sbb rbx, -117
imul cx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
