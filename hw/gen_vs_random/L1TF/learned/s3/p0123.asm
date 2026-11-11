.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, cl
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
sub bl, -96
sbb dl, sil
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
sbb al, sil
and dil, -22
xor al, 89
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdi]
xor dil, bl
xor cl, dl
test ax, 13284
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
