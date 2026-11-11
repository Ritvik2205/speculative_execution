.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc al, 36
btc bx, 45
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], al
and rdx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rdx]
cmovnbe rax, rdi
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 93
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dil
add bl, -18 # instrumentation
mov rdx, rcx
and rax, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rax]
cmovnbe rbx, rbx
and rbx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rbx]
xor dx, di
imul eax
imul rbx, rdi
mov esi, 39
imul bl
cmovnl rsi, rbx
bts ecx, 56
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
sbb bl, -94
and rsi, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rax]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rsi
add bl, -72
and rdx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
test dil, al
and cl, 58
test al, al
xor esi, eax
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 82
or ecx, edx
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 90
add dl, 56 # instrumentation
cmovle rdi, rdx
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
sub edi, 45
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
mul esi
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], bl
sub dl, 43
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
