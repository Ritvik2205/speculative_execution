.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp cl, 59
and rdi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 39
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
cmovnb rbx, rax
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 49
cmovns dx, dx
movzx edi, bl
cmovns rcx, rdx
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add cl, -10 # instrumentation
mov cx, -26516
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
cmovnb edi, esi
cmovnbe rcx, rax
and rax, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], ecx
and rdi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdi]
cmp ebx, 52
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], di
and rdx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rdx]
dec dil
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 96
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
or ax, -12775
and rdi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rdi], si
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rdi], ax
xor esi, 99
adc cl, dil
add cl, -21 # instrumentation
adc rdi, 5
or ax, -15282
cmovnp rcx, rbx
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rbx
xor bx, 39
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
add dl, 31 # instrumentation
cmovnl ax, ax
and rdx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdx]
movzx ecx, al
and bx, 95
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], rax
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 96
and rsi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rsi]
bts edx, ecx
cmovs esi, edi
sbb bl, 57
add cl, -82 # instrumentation
sbb cx, dx
sub rdx, rbx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
