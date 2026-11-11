.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rsi]
cmp ebx, -33
and rdx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdx], 64
sub sil, -18
or bl, dil
add al, -72
adc ecx, 13
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 65
xor esi, 106
xor dl, al
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
