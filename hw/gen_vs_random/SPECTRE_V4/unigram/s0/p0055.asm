.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 22
and rdx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdx], 85
sub di, 9
and rbx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rax
cmp si, 109
or cl, cl
cmovns rdx, rax
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
or sil, dl
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
and bl, bl
and rsi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], ecx
add bl, dil
cmovo edx, eax
mov rsi, rdx
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], bl
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], 83
and rdi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdi], -7
and rsi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rsi]
and ax, cx
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
sub bx, 24
and rbx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rcx]
xor al, -6
sub sil, dl
and rbx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rbx]
btr eax, 6
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
cmovnle esi, ebx
and cl, bl
mov esi, ebx
and rax, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rax]
cmovp eax, esi
and rcx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 61
or cl, -104
inc dx
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rcx
sub dx, -12
cmovnl si, dx
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
