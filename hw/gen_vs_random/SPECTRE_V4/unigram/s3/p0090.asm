.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, bl
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], bx
sbb al, dil
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rdi
cmovb rcx, rdx
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rax
add cl, -37 # instrumentation
adc ecx, 70
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rcx
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
cmovnp bx, bx
add esi, edx
and rsi, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 34
sbb sil, 108
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 60
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], 63
and rcx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], si
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], 66
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
cmovs rdi, rbx
and rax, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rax]
xor al, -2
cmovnp bx, bx
movzx edx, bl
sub al, bl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 31
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], dx
and dil, dl
xor al, 29
sbb dl, -99
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], dx
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rsi
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
cmovb esi, ebx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rsi]
cmp di, 95
cmovs ecx, esi
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 72
add di, -74
add dil, 16
mov rdi, 56
movzx dx, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
