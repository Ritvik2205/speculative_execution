.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], sil
bts dx, dx
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ebx
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], 75
cmp al, -106
sbb esi, 89
add dl, -85 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdi]
bswap ebx
cmp bx, 113
cmovnz rcx, rsi
bt bx, dx
cmovnp esi, edx
mov rsi, rdi
btc edi, 125
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
and dl, al
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 83
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 21
sub bl, dl
and rsi, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
adc sil, bl
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], ax
neg cx
add al, 42 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edi
cmp ecx, 92
cmp dil, bl
and rax, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rax]
cmovnle edx, ecx
cmovnp eax, ecx
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 9
cmovl di, ax
mul dx
and rdx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rdx]
adc al, bl
add sil, 3
and rax, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], 56
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], 36
neg bl
and dil, cl
sbb dx, 2
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 64
add sil, -97 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
