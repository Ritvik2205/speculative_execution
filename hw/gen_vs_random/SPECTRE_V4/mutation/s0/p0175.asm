.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rbx]
or dl, bl
mov rsi, rbx
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
add eax, -1796699558
and rdi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdi], -95
adc bl, cl
add rcx, rdx
and dx, 1
movsx rsi, bx
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
add rdx, rbx
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 77
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
adc al, 69
add bl, 65 # instrumentation
cmovnp cx, si
cmovnb esi, eax
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
xor cl, bl
imul eax
cmovnl rbx, rcx
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
bt cx, 111
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -57
sbb dl, bl
and rax, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rax]
btc ax, si
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and esi, 55
xor sil, dl
cmp cl, cl
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
sub bl, bl
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
movzx edx, al
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
cmovz eax, eax
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edx
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
cmovnb esi, edx
not ecx
not si
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
and sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
