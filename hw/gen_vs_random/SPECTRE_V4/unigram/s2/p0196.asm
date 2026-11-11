.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rax, rdx
adc rcx, 75
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], si
add sil, 26
and dil, 96
and rbx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
cmovnz cx, bx
and rsi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rsi], bx
and rdx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rdx]
add ebx, 3
or edx, -127
and rdi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdx], ax
and rdx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], ax
bts eax, 209
sub sil, -50
and cl, al
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rsi
and rdi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdi]
cmovs ebx, eax
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 87
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], eax
bt eax, 84
imul rsi, rbx
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], eax
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], bl
mul rbx
cmovz ax, ax
and rcx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdx], ebx
and rdi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 40
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], cx
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rax
movzx cx, dil
cmovnle edx, esi
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rsi]
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], dil
and rdi, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
