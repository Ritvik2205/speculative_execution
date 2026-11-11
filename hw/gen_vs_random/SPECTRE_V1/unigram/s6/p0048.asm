.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 86 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], 68
or bl, 96
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], bx
adc bl, -73
or dx, 0b1000000000000000 # instrumentation
bsf dx, dx
lea di, qword ptr [rdi + rcx]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dl
adc bl, 102
jns .bb_0.1
jmp .exit_0
.bb_0.1:
imul rdx, rax, 17
and rcx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], dx
cmovnbe eax, ebx
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -12
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
