.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, bl
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
add bl, 65 # instrumentation
cmovnp cx, si
add rcx, rdx
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
bt cx, 111
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
cmp cl, cl
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edx
cmovnl rbx, rcx
adc bl, cl
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
add eax, -1796699558
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
imul eax
cmovnb esi, edx
sbb dl, bl
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
mov rsi, rbx
movzx edx, al
btc ax, si
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
add rdx, rbx
and esi, 55
cmovz eax, eax
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
xor sil, dl
and rax, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rax]
or dl, bl
adc al, 69
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 77
and rdi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdi], -95
sub bl, bl
movsx rsi, bx
not ecx
and sil, dl
cmovnb esi, eax
and rbx, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rbx]
and dx, 1
not si
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
