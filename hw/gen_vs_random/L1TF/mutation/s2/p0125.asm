.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
cmp eax, 951020724
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], cl
lea dx, qword ptr [rdx + rax + 22206]
and rdi, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
and eax, edi
xor bl, cl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
inc dl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
inc rdx
or rax, 699028911
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rcx
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
btc eax, 220
and rax, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], dl
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 0
xchg cl, dl
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], al
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rax], rax
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edi
or ax, -18131
and rcx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rax]
bts edx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
