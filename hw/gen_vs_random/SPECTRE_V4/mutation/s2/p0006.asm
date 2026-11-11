.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
sbb dl, bl
add rdx, rbx
and rax, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rax]
mov rsi, rbx
not ecx
bt cx, 111
or dl, bl
cmovnb esi, eax
not si
adc bl, cl
cmp cl, cl
and rdi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdi], -95
btc ax, si
sub bl, bl
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
cmovnl rbx, rcx
xor cl, bl
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
cmovz eax, eax
and sil, dl
and esi, 55
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
add rcx, rdx
and rdx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
cmovnb esi, edx
xor sil, dl
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
movsx rsi, bx
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
add bl, 65 # instrumentation
cmovnp cx, si
adc al, -58
and dx, 1
movzx edx, al
imul eax
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
add eax, -1796699558
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 77
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edx
and rbx, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
