.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rsi]
xor edx, 92
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 58
cmovnb ecx, edx
and rbx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 61
and rdx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rdx]
add cl, 8 # instrumentation
adc al, sil
sbb al, dil
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 34
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edi, eax
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rdx
and rdx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], eax
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], cx
sub bl, 17
add al, -75 # instrumentation
adc al, 79
add dil, -32 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], eax
cmovnbe rdx, rdx
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb bx, di
cmp si, 96
and rdi, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rdi]
sbb eax, 2051746726
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 19
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], si
movzx rdx, cx
cmovb rdx, rcx
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], sil
movsx rax, cl
xchg edx, edi
bt edx, eax
inc al
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ebx
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rcx], si
bt dx, 74
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dil
and rcx, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
bts ecx, 17
mov rax, rbx
cmp sil, 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
