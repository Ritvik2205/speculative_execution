.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test edx, 1479885278
and ecx, edi
btc rcx, 63
test al, 57
and rbx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rbx]
or sil, sil
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], sil
or eax, -646827727
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], 92
and rcx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rcx]
bts bx, si
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
cmovs di, ax
and rax, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ebx
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rdi
and rbx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dil
neg ax
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 109
and rsi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rsi]
add bl, 95 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rbx]
cmp si, dx
and rbx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 35
mov bl, -69
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], cx
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 61
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
sbb rax, 475459025
sub cx, di
and rsi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dl
imul rbx, rax, 47
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 45
cmovnle rax, rbx
sub al, cl
and rsi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 1 # instrumentation
xchg cl, cl
add dl, -59 # instrumentation
movsx edx, cl
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 0
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
