.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, 2007177863
add eax, esi
add bl, -109 # instrumentation
sbb edx, 47
and rbx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], dx
and rax, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rax]
dec rcx
xor bl, cl
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], si
cmovns esi, esi
and rax, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rax]
sub cl, dl
cmovp ebx, ebx
test edi, -1249897727
test rcx, -2118888343
imul esi, edx, 69
xor rsi, -3
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe esi, edx
and rdx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdx]
imul di, bx
cmp sil, 88
bt edi, edx
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
cmovnb dx, dx
sub sil, -36
and rdx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdx]
and eax, -37
cmp sil, 88
and rbx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rbx]
movzx edx, al
xor sil, cl
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], 93
and rsi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rsi], 16
cmp dl, 49
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rcx]
test rcx, -2118888343
and rcx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rcx]
cmovnl rbx, rcx
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
xor si, 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
