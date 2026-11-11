.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb cl, dil
xor dl, al
cmovnp rbx, rdx
sbb ebx, 24
and ecx, 94
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
bt ax, 19
bts ecx, 71
test al, dl
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], 43
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 71
and rdi, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rax]
movzx ax, sil
cmp dl, dl
mov si, 29
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 90
test dil, dl
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], ax
xor dl, 78
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], edi
test cl, -89
bt ebx, eax
sub dil, -10
and rsi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rsi], 99
and rsi, 15
and cl, bl
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
add cx, 8
or ecx, 17
imul rax, rdx
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
cmovnp bx, dx
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
cmp al, bl
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rax
add edx, 42
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 7
cmovs rbx, rdi
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], 17
cmovle esi, eax
test cl, bl
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 85
and rsi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rsi]
cmp dx, 56
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
