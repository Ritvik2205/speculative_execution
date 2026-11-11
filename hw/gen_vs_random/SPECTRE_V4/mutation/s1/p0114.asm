.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
not si
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
cmovnb esi, eax
movsx rsi, bx
sub bl, bl
and rdi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdi], -95
and dx, 1
sbb dl, bl
and rax, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rax]
imul eax
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
cmp cl, cl
and sil, dl
add eax, -1796699558
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
movzx edx, al
mov rsi, rbx
cmovnb esi, edx
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
btc ax, si
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
xor cl, bl
xor sil, dl
add bl, 65 # instrumentation
cmovnp cx, si
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 77
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
cmovnl rbx, rcx
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
bt cx, 111
not ecx
and rbx, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rbx]
add rdx, rbx
and rdx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
adc bl, cl
or dl, bl
add rcx, rdx
and esi, 55
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edx
cmovz eax, eax
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
adc al, 36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
