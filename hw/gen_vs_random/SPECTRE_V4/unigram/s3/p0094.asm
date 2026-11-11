.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 62
or al, 109
add bl, -102 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
sub sil, -36
sub al, 50
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], cl
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
and rsi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], 83
imul sil
and rdi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdi]
add al, 118
cmovno ecx, edx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 25
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rax]
xor ebx, eax
and rbx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rbx]
and dx, 1
sbb al, dil
cmovns ecx, eax
and rax, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rax]
add ebx, 3
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edi
imul rsi
mov rax, -8696242625349627833
and rdx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rdx]
xchg ecx, esi
and rbx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rbx
and rdx, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], cx
mov rbx, rax
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
mov rax, -8696242625349627833
movzx cx, dl
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
and rax, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 45
movzx cx, dil
and rdi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdi]
cmovp esi, ebx
add al, -10 # instrumentation
cmovnbe eax, ebx
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 99
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
