.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], 1
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], edi
sbb rax, rbx
and rcx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rcx]
dec eax
btc rbx, 85
add al, 5
sbb bl, dl
and rdi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rdi]
test bl, 0
sbb dil, 87
adc rax, rbx
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
cmovnbe rax, rdi
cmovns cx, bx
and rdx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdx]
sbb al, -47
and dx, 1
cmovns si, ax
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx
adc edx, 8
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
and ax, 35
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rdx
sub di, 4
mov ecx, eax
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
cmovno edi, eax
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rbx]
or dl, 88
imul edx, edi
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
xor bx, di
sub sil, -36
cmovnp rsi, rcx
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rcx]
btc rbx, 17
test dil, sil
movzx rcx, al
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 46
cmovz edi, ebx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rcx]
mov al, al
add dx, -90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
