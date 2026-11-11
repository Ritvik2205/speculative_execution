.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt cx, 111
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
cmovz eax, eax
add bl, 65 # instrumentation
cmovnp cx, si
add rdx, rbx
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
xor cl, bl
add eax, -1796699558
adc al, 36
and rbx, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rbx]
and dx, 1
not si
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
cmovnb esi, eax
imul eax
or dl, bl
and sil, dl
cmp cl, cl
and rdx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdx]
xor sil, dl
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edx
mov rsi, rbx
and esi, 55
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
adc bl, cl
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rax]
cmovnb esi, edx
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
movzx edx, al
not ecx
sbb dl, bl
btc ax, si
movsx rsi, bx
and rdi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdi], -95
add rcx, rdx
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 77
cmovnl rbx, rcx
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
sub bl, bl
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
