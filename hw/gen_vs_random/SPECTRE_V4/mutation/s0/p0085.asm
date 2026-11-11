.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, dl
movsx rsi, bx
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
add rdx, rbx
cmp cl, cl
or dl, bl
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
adc bl, cl
and rax, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rbx]
add bl, 65 # instrumentation
cmovnp cx, si
cmovnb esi, eax
cmovnb esi, edx
bt cx, 111
and rdx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdx]
not si
xor sil, dl
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
mov rsi, rbx
cmovnl rbx, rcx
movzx edx, al
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
sub bl, bl
and dx, 1
not ecx
and esi, 55
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -57
xor cl, bl
btc ax, si
add rcx, rdx
sbb dl, bl
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edx
cmovz eax, eax
imul eax
add eax, -1796699558
and rdi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdi], -95
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 77
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
adc al, 69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
