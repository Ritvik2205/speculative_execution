.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 32
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rsi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rsi]
movzx ax, dl
btc rdx, rdi
and rax, 4
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
bts dx, 16
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], ax
add sil, 26
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], bx
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 89
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx]
add rcx, rbx
and rdi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rdi]
test ecx, 49
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
adc dl, bl
sub rax, -701741274
and rbx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
adc esi, 90
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 125
cmovz edx, eax
and rax, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdx
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
add ebx, 3
and rbx, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
add bl, -10 # instrumentation
cmovnbe ebx, eax
movzx ecx, sil
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
bt ebx, eax
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 11
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -14
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], cl
movzx cx, dil
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], si
and rax, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
and rdi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], cx
sub dl, dil
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
