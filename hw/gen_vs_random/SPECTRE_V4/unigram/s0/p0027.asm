.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
add al, 40 # instrumentation
cmovnp rcx, rax
and rcx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rcx]
mul dil
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 41
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
imul eax, edi, 66
adc dl, bl
btc si, 48
add al, -71 # instrumentation
cmovb rcx, rbx
bt eax, esi
and rcx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdi]
inc ax
sbb cl, 127
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], cl
cmovnb edx, edi
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 4
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], eax
not edx
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rax], rsi
movzx ecx, al
and rbx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], ebx
sub ecx, -107
xchg rbx, rsi
cmp rdi, rsi
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], dx
cmovnbe rbx, rcx
mov dil, cl
and rsi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rsi]
xor al, 55
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], esi
xchg edi, ebx
adc di, cx
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rcx]
xchg esi, eax
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 45
movzx eax, sil
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
cmovs cx, si
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 1 # instrumentation
and dx, word ptr [r14 + rdi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 59
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 69
and rsi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rsi]
adc rdi, rdx
and al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
