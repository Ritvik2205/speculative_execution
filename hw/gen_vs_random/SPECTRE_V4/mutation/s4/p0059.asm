.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and esi, 55
add rcx, rdx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rbx, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rbx]
bt cx, 111
cmovz eax, eax
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
sub bl, bl
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 77
movzx edx, al
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
cmp cl, cl
adc al, 69
or dl, bl
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
imul eax
movsx rsi, bx
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
cmovnb esi, edx
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
add eax, -1796699558
add bl, 65 # instrumentation
cmovnp cx, si
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edx
adc bl, cl
xor cl, bl
and sil, dl
and rax, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
mov rsi, rbx
xor sil, dl
not si
cmovnb esi, eax
and rdi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdi], -95
sbb dl, bl
and rdx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdx]
not ecx
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
add rdx, rbx
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
and dx, 1
cmovnl rbx, rcx
btc ax, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
