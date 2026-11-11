.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 97
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], ecx
not esi
sub dil, -10
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 57
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], 48
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], 74
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 19
cmovo rdx, rbx
cmp dil, -124
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 45
mov rdi, 66
and sil, -49
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rcx
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], dx
mov rdi, 78
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 43
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
cmovnbe cx, ax
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 61
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], al
and rbx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rbx]
inc bl
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], ax
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], dx
imul edi, ecx, 27
imul ebx, eax
cmovnp rbx, rdx
cmovnp rdx, rdi
add cl, 122 # instrumentation
cmovz rax, rsi
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], 30
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
and bl, al
and rax, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 117
and rax, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rax]
or di, ax
test ebx, ecx
add dl, dl
mov rsi, 91
cmovnbe si, ax
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 12
cmovz esi, edx
bts ecx, 98
add al, 122 # instrumentation
cmovns ebx, esi
and rbx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rbx], 77
add bl, -115 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
