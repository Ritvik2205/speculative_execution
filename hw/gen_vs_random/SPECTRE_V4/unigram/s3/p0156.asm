.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul bl
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb bx, si
and rdx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdx]
cmovnbe rsi, rdx
cmp rdi, 86
and rdi, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rdi]
mul edx
xor dl, 100
cmp dil, -124
and rbx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rbx]
imul rdi
add si, 4
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], rcx
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], bl
cmovnle rcx, rcx
and rsi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rsi]
cmovnbe rbx, rax
add dl, -114 # instrumentation
cmovl ax, di
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 37
and rbx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rax
cmp al, sil
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
xor ax, 25554
cmp dil, dil
movzx eax, dl
cmovnp edx, ebx
and rax, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rax]
btc rdx, 60
sub edi, ecx
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
sub bx, cx
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 48
and rbx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rax]
or dl, 88
add eax, ecx
cmovnp bx, di
and rax, 19
movsx edx, ax
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], 19
xor al, dil
inc ebx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
