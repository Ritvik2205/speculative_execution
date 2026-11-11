.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -4 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
cmp dl, 64
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -6
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rdx
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rcx
lea rdx, qword ptr [rsi]
xor bl, -6
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rsi
add al, 118 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], -45
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 3
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
xchg dl, cl
or rax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rax
inc cx
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dl
jmp .bb_0.1
.bb_0.1:
bt rsi, rbx
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], cl
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], -36
and rdi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdi]
sbb bl, -62
and rax, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rax]
cmovz esi, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
