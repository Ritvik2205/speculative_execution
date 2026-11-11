.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx edx, al
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edx
and rax, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rax]
cmovnl rbx, rcx
cmovz eax, eax
add bl, 65 # instrumentation
cmovnp cx, si
btc ax, si
adc al, -58
and sil, dl
and rdx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdx]
cmp cl, cl
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
cmovnb esi, edx
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
imul eax
xor sil, dl
cmovnb esi, eax
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
and dx, 1
and esi, 55
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
not si
or dl, bl
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -57
bt cx, 111
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
and rbx, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rbx]
add eax, -1796699558
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdi], -95
sbb dl, bl
not ecx
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 77
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
movsx rsi, bx
xor cl, bl
sub bl, bl
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
add rdx, rbx
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
mov rsi, rbx
add rcx, rdx
adc bl, cl
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
