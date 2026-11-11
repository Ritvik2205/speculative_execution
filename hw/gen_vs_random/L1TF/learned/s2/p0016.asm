.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
xchg ecx, eax
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ecx
adc al, sil
and al, 33 # instrumentation
cmovnle ebx, ecx
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
btc ax, si
and rsi, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
bt rsi, rdx
btc dx, 37
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
lea rsi, qword ptr [rdi + rsi + 75]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], -31
xor rsi, 94
and edx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
