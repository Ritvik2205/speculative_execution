.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
test bl, 24
cmovz edx, ecx
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], ebx
mov rdx, 9
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dl
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rax
cmovnb esi, ecx
and rdx, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rdx]
add al, 123 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
sbb dl, bl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], si
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rcx
and rcx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 42
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rsi
cmovnp ax, bx
add dl, -10 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rdi]
sub cl, al
add cl, 106 # instrumentation
cmovnp rcx, rax
mov rsi, 88
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 85
and rsi, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rsi]
bts rcx, 3
cmovnbe rdx, rax
and eax, -24
test ax, -5170
sub ecx, 32
test sil, sil
add esi, -5
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 4
or dil, 1 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], rdi
cmovb esi, esi
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 80
cmovb ebx, edi
add ebx, 3
xor dil, sil
test cl, sil
add ecx, edx
and rsi, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rsi]
xchg rsi, rdx
or rcx, rdx
cmovb ebx, eax
or rbx, rdi
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], 56
add al, 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
