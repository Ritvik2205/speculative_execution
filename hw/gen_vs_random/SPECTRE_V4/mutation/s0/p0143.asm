.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub bl, bl
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edx
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
movsx rsi, bx
not ecx
xor sil, dl
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
cmp cl, cl
cmovnb esi, edx
movzx edx, al
bt cx, 111
and sil, dl
btc ax, si
imul eax
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
add rcx, rdx
adc bl, cl
and rbx, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
cmovnb esi, eax
not si
add rdx, rbx
or dl, bl
xor cl, bl
and rdx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdx]
sbb dl, bl
and esi, 55
cmovz eax, eax
cmovnl rbx, rcx
add eax, -1796699558
and rdi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdi], -95
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
mov rsi, rbx
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
adc al, -58
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 77
add bl, 65 # instrumentation
cmovnp cx, si
and dx, 1
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
