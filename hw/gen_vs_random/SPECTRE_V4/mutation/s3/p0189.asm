.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
btc ax, si
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
sub bl, bl
and rax, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
not si
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
cmovz eax, eax
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 77
and sil, dl
not ecx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
movzx edx, al
and rbx, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rbx]
adc bl, cl
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edx
and dx, 1
cmovnl rbx, rcx
and rdx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdx]
add rcx, rdx
imul eax
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
movsx rsi, bx
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
xor sil, dl
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
cmovnb esi, edx
and esi, 55
add bl, 65 # instrumentation
cmovnp cx, si
xor cl, bl
adc al, -58
cmp cl, cl
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
sbb dl, bl
cmovnb esi, eax
and rdi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdi], -95
mov rsi, rbx
add eax, -1796699558
bt cx, 111
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
or dl, bl
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
add rdx, rbx
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
