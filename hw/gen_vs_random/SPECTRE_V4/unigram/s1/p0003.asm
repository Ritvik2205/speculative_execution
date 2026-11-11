.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
or ebx, ecx
and rdx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], cl
and rdx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdi], 1
xor sil, 56
sbb sil, dil
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], al
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], cl
adc cl, dl
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], 4
and al, dil
and rdx, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rdx]
sub cl, 116
and rax, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rax]
cmovnl rax, rcx
or eax, 2007177863
and rbx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rsi
and rbx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rbx]
not ax
mul edx
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rdx], eax
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
sub cl, 116
add bl, -21 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rbx]
mov bl, bl
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rax
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rsi
cmp cl, 70
adc al, -58
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rdx], eax
bswap esi
dec rsi
cmovnbe rsi, rdx
add dl, -94 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], di
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 1
and rbx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 29
movzx dx, sil
cmp bl, 13
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 13
and rcx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
