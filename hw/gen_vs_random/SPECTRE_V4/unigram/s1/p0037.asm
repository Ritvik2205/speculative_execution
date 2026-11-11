.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 14
or eax, ecx
and rbx, 110
and rcx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rcx]
add dl, 116 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdi]
not bx
cmp rcx, 40
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], 5
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rdx
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], ax
sub edx, eax
cmovnp rdx, rdx
and rax, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
add sil, 110
sub dl, 43
mov rsi, 55
not al
cmovb edi, ebx
add cx, cx
cmp edx, 28
and rax, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rax]
xor bl, 93
sbb bl, -94
and rbx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rbx]
xor sil, cl
cmp rsi, 100
xchg rdx, rsi
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 48
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rbx]
cmp sil, 88
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rdi]
adc bl, 89
add cl, cl
and rcx, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rcx]
and rdx, 32
and rax, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
cmp dl, 53
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
and rsi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rsi]
sbb ax, bx
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rbx
and rax, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
