.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul edx
cmovnb ecx, ebx
xor bl, cl
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 34
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
mul edx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 68
cmp bx, 9
mov esi, 78
neg di
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], esi
and dl, 51
and rbx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rbx]
xor al, bl
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rbx]
sub dl, sil
add dl, 116 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rax]
add dl, -10 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], bx
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rsi]
cmp eax, -92285311
cmovnbe rbx, rax
and rsi, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdi]
movzx rax, dx
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], 8
movzx rsi, cx
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
and rdx, 85
cmovle rsi, rbx
xor dil, sil
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
imul ax, di
and rdx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rdx]
add bl, 63 # instrumentation
and rbx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rbx]
add bl, -109 # instrumentation
sbb ebx, 79
xor bl, 93
and rax, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rax], 17
imul rdi, rsi
movzx rbx, ax
cmovnb rdi, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
