.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rdx], si
dec rsi
sub bl, 17
movzx ax, al
and dl, bl
cmovns bx, bx
sbb bl, dl
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], 78
and rdx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rdx]
btc rcx, 16
xor al, al
not dx
cmovp eax, eax
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
mul edx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
sbb dx, 34
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edx
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -64
or ax, di
xchg ebx, edx
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rax
btr si, di
dec rcx
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], edi
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 2
and rax, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rax]
cmp dl, 76
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
xchg rax, rbx
or esi, edi
and rsi, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rsi]
movzx edx, bl
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], rbx
cmovnbe ax, dx
sbb bl, -94
sub bl, bl
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
imul cl
sbb eax, 4
sub dil, -10
and rbx, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rbx]
test ebx, 1263899340
xor bx, 49
add cl, 119 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
