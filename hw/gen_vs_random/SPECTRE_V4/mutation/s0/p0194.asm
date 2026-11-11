.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, bl
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
cmovnb esi, eax
and sil, dl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
mov rsi, rbx
add bl, 65 # instrumentation
cmovnp cx, si
cmp cl, cl
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 77
not si
add eax, -1796699558
bt cx, 111
and rax, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rax]
and dx, 1
cmovnl rbx, rcx
and rbx, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -57
adc bl, cl
not ecx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
sbb dl, bl
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
imul eax
and rdx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdx]
add rdx, rbx
add rcx, rdx
movsx rsi, bx
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
xor sil, dl
and esi, 55
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
movzx edx, al
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
sub bl, bl
and rdi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdi], -95
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
cmovnb esi, edx
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edx
xor cl, bl
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
cmovz eax, eax
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
adc al, 36
btc ax, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
