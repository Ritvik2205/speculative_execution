.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not si
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edx
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 77
add eax, -1796699558
cmovnl rbx, rcx
and rdx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdx]
and dx, 1
cmovnb esi, edx
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
movzx edx, al
and rdi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdi], -95
add rcx, rdx
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
and esi, 55
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
imul eax
and rax, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rax]
not ecx
adc al, 36
cmp cl, cl
add rdx, rbx
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
bt cx, 111
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
cmovnb esi, eax
cmovz eax, eax
and sil, dl
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
xor cl, bl
btc ax, si
add bl, 65 # instrumentation
cmovnp cx, si
sbb dl, bl
xor sil, dl
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
mov rsi, rbx
and rbx, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
adc bl, cl
or dl, bl
movsx rsi, bx
sub bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
