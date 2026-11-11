.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul dl
cmovo dx, bx
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 45
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
cmovnle bx, bx
bt edi, edx
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rdx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rcx]
btc ax, 10
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 41
and rcx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rcx]
xchg edx, eax
and rdx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rbx]
cmovbe rax, rcx
and rdx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdx]
add dl, -91 # instrumentation
cmovl rdi, rax
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
cmovp ecx, ebx
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], cl
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 63
cmovz esi, esi
and rbx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rbx]
xor ebx, 40
or bl, -86
cmp cl, 49
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], bx
btr bx, 42
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], dx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rsi
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dil
mov rax, rdx
add al, -79 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rax]
sbb ecx, 38
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], bx
or cl, cl
and al, sil
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], dx
adc dl, 7
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 39
and rax, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rax]
sbb si, 25
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
