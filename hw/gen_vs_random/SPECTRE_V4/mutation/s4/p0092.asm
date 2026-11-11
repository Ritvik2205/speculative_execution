.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 77
or dl, bl
sbb dl, bl
cmovz eax, eax
add eax, -1796699558
cmovnb esi, edx
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
add rdx, rbx
adc bl, cl
not ecx
sub bl, bl
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edx
movzx edx, al
cmovnb esi, eax
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
and sil, dl
imul eax
and rax, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rax]
not si
xor sil, dl
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
add bl, 65 # instrumentation
cmovnp cx, si
movsx rsi, bx
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
and rdx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdi], -95
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
xor cl, bl
mov rsi, rbx
cmovnl rbx, rcx
and dx, 1
btc ax, si
and esi, 55
cmp cl, cl
and rbx, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rbx]
bt cx, 111
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
add rcx, rdx
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
adc al, 36
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
