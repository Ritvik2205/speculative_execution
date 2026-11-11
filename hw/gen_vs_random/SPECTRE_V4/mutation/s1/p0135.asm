.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
xor sil, dl
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
add rdx, rbx
not ecx
and rdx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and esi, 55
cmovnl rbx, rcx
not si
cmovnb esi, edx
mov rsi, rbx
and rdi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdi], -95
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
movzx edx, al
sub bl, bl
cmovnb esi, eax
add rcx, rdx
add bl, 65 # instrumentation
cmovnp cx, si
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
movsx rsi, bx
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
bt cx, 111
cmp cl, cl
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
xor cl, bl
and rbx, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rax]
and sil, dl
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and dx, 1
btc ax, si
add eax, -1796699558
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 77
imul eax
adc bl, cl
adc al, -58
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edx
sbb dl, bl
cmovz eax, eax
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
or dl, bl
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
