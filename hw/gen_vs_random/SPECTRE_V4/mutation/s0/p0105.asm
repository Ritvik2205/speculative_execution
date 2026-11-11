.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, bl
not ecx
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
adc bl, cl
movsx rsi, bx
add rcx, rdx
cmovnb esi, edx
cmovz eax, eax
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
xor sil, dl
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
adc al, 69
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdx]
add bl, 65 # instrumentation
cmovnp cx, si
cmovnb esi, eax
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
mov rsi, rbx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
sub bl, bl
sbb dl, bl
and sil, dl
movzx edx, al
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
not si
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
cmovnl rbx, rcx
and dx, 1
and rbx, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rbx]
imul eax
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
xor cl, bl
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edx
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 77
add eax, -1796699558
btc ax, si
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
bt cx, 111
cmp cl, cl
and esi, 55
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
and rax, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
and rdi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdi], -95
add rdx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
