.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
add cl, dl
sbb al, -47
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
cmovz esi, ecx
or edx, -127
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
mov edx, ecx
test al, 66
sbb cl, bl
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 108
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], 89
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 111
and rbx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rbx]
cmovns di, bx
cmovz edx, esi
or cl, 8
add rdi, 105
add rdi, -94
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], dx
and rbx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ecx
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
imul cl
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
btc rbx, rsi
and rdi, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rbx]
movzx ecx, bl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
xor dil, 60
add dl, -99 # instrumentation
not esi
and rax, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdi]
cmovp rdi, rax
cmovnl rbx, rax
or dl, 56
not dl
or bl, sil
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], cl
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
add sil, 110 # instrumentation
movsx ax, sil
mul rbx
add eax, -1796699558
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -114
add bx, 110
and cx, 17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
