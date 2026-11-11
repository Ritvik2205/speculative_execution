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
adc al, 36
dec dl
btr esi, edx
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rbx
dec rsi
and rcx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rcx]
cmp rcx, 87
xor dl, al
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
and dl, 84 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rdx]
and dx, 1
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 77
not si
cmovnb esi, eax
cmovz eax, eax
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
bt cx, 111
and rsi, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
btc ax, si
and rdx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdx]
mov rsi, rbx
and rdi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdi], -95
xor sil, dl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
cmovnl rbx, rcx
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
xor sil, bl
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
movsx rsi, bx
or dl, bl
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
cmp cl, cl
and rax, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rax]
movzx edx, al
add eax, -1796699558
bt ebx, 228
or dl, bl
cmp al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
