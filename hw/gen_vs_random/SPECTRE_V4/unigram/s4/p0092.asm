.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edi, edi
xor dil, bl
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rbx
and rdx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdx], 12
and rdi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], eax
movsx edx, ax
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], 92
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], -42
or al, -83
cmp bx, ax
and rdi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rax], ebx
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 26
add eax, -105
and rdi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], esi
test cl, dl
mov ax, dx
and rsi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rsi], 61
cmovle di, di
mov bl, al
sbb ax, ax
add sil, 70 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 70
cmovs rsi, rdx
mov dl, -124
and rsi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rsi]
add al, -86 # instrumentation
cmovnp ecx, eax
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], eax
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rdx
add bl, 95 # instrumentation
mov al, 43
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], ecx
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rbx]
xor ecx, 14
adc sil, -112
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], -25929
add cl, -10 # instrumentation
and rcx, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rcx]
cmovb eax, ecx
add edi, edx
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 3
bt ax, 145
mov al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
