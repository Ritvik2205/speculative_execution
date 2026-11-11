.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 76
sub al, 127
mov cl, sil
test al, 114
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
add dil, dl
sub bl, dl
and ax, -4731
adc cl, dl
adc dl, 33
sub sil, 71
sub cl, -127
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
sbb bl, dil
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
cmp al, -106
adc sil, 88
movsx di, cl
cmp dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
