.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and sil, dl
xor cl, bl
movzx edx, al
imul eax
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
or dl, bl
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
not ecx
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
add eax, -1796699558
and rax, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rax]
xor sil, dl
adc bl, cl
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
add bl, 65 # instrumentation
cmovnp cx, si
sbb dl, bl
sub bl, bl
and dx, 1
cmp cl, cl
and rbx, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
mov rsi, rbx
and rdi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdi], -95
adc al, 69
add rdx, rbx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
movsx rsi, bx
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
add rcx, rdx
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 77
cmovz eax, eax
and rdx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
cmovnb esi, edx
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
bt cx, 111
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edx
btc ax, si
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
cmovnl rbx, rcx
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
not si
and esi, 55
cmovnb esi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
