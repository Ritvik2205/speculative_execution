.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt ebx, 228
and rax, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -114
and dil, 96
and rdi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rdi]
test bx, cx
add bl, 65 # instrumentation
cmovnp bx, ax
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 41
cmovnbe rsi, rcx
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edx
imul eax
add dl, dl
and rax, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rax]
mul cl
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 97
cmp dx, 44
and rdx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
cmp bl, dil
imul rsi
imul rdi
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
sbb rdx, 73
and rdx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], 9
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 98
xchg al, sil
and rcx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rcx]
cmovnb rsi, rax
cmp rbx, 23
and bl, dl
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 85
and rax, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rax]
cmovb edx, edx
cmp al, 114
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
inc rax
cmovz edi, edi
movzx rdi, cx
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], 65
cmovle esi, edx
sbb dl, cl
test al, 66
or bl, bl
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
