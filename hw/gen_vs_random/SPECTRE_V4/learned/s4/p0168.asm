.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, bl
cmovb edi, ebx
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
inc al
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
cmovs dx, di
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -70
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
mov al, dl
sub al, 119
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
sbb bl, -94
cmovns bx, di
mov rcx, 4219775168754920203
and al, -127
and rsi, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 79
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rax], ecx
cmovnl di, si
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
or cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
