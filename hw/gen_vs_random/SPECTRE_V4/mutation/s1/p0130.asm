.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul eax
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 77
adc al, 36
xor sil, dl
btc ax, si
add bl, 65 # instrumentation
cmovnp cx, si
and rdx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
or dl, bl
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
not si
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
bt cx, 111
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
and dx, 1
sub bl, bl
movsx rsi, bx
cmp cl, cl
sbb dl, bl
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edx
and sil, dl
and rbx, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
cmovz eax, eax
add rdx, rbx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
cmovnb esi, edx
not ecx
mov rsi, rbx
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
movzx edx, al
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
adc bl, cl
xor cl, bl
add rcx, rdx
cmovnb esi, eax
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
add eax, -1796699558
and rdi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdi], -95
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
and esi, 55
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
cmovnl rbx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
