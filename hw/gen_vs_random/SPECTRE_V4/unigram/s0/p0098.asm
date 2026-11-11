.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add edx, 14
xor al, 59
add si, 4
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe ecx, esi
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 98
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
cmovnbe rax, rcx
test al, dl
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rax]
sub bl, 17
or ebx, edx
and rsi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rsi]
or bl, 29
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 84
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], 15
and rsi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rsi], 9
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
add rdx, rbx
xchg ax, si
sbb cl, 20
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rsi]
cmovnp esi, ecx
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], 68
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
or cl, 97
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
dec rsi
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
test edi, -1249897727
btc cx, ax
and rsi, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rcx
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
sub ebx, esi
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], sil
sbb dil, 7
movzx esi, dl
and rax, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
and rdi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdi]
sub edx, 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
