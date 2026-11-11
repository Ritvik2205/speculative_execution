.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
imul eax
mov rsi, rbx
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
add eax, -1796699558
and dx, 1
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
and rdi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdi], -95
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 77
sbb dl, bl
not si
add bl, 65 # instrumentation
cmovnp cx, si
xor sil, dl
and rbx, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
not ecx
adc al, 69
btc ax, si
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edx
adc bl, cl
and esi, 55
xor cl, bl
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
add rdx, rbx
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
or dl, bl
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
cmp cl, cl
and rdx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
bt cx, 111
movzx edx, al
cmovz eax, eax
cmovnb esi, edx
cmovnl rbx, rcx
add rcx, rdx
cmovnb esi, eax
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
sub bl, bl
and sil, dl
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
movsx rsi, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
