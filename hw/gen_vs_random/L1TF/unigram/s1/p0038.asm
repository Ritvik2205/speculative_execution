.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rsi]
adc al, 70
sets sil
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 58
and rax, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rax], ax
xchg cx, si
jmp .bb_0.1
.bb_0.1:
cmovl edi, ebx
not rcx
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], 17
cmovo cx, dx
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
sbb sil, -19
sub ebx, 95
and rbx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
