.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dx, 50
and rdx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rdx]
bswap rdx
btr ebx, 95
setz al
movzx ebx, ax
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 87
and rcx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 93
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 3
mov dl, dl
xor si, -50
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], sil
and rdi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdi]
adc dl, -12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
