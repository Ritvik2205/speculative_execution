.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 65 # instrumentation
cmovnp cx, si
cmovnb esi, edx
and sil, dl
sbb dl, bl
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
add rcx, rdx
adc al, -58
not ecx
xor cl, bl
add rdx, rbx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
adc bl, cl
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edx
and dx, 1
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 77
not si
cmovnb esi, eax
cmovz eax, eax
imul ax, bx, 6
movzx ecx, sil
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
add dl, 48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], dl
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rsi
and bl, al
xor dl, 61
cmp ax, -15409
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], edx
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], dx
test eax, -818909344
movzx edx, al
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 53
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -102
imul rcx, rdi
and rdx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
btc dx, 16
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 2
and rdi, -2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
