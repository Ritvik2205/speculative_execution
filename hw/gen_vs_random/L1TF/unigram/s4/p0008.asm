.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 70 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rcx]
and bl, dil
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], -80
bts rsi, rsi
cmp cl, -89
sub ax, 26007
cmp si, 99
add dil, 21 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
btr eax, 231
sbb sil, -79
add cl, 44 # instrumentation
cmovns bx, cx
sub cl, dl
test dl, dl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
