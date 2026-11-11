.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rsi]
or dl, -26
sub si, di
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
cmp sil, 127
test dl, 24
jmp .bb_0.1
.bb_0.1:
or bl, dl
xor al, -31
sub ax, dx
dec bl
bt edi, esi
sbb bx, 94
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
