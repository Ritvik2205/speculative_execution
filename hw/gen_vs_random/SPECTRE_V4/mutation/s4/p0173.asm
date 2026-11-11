.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb esi, edx
sub bl, bl
or dl, bl
not ecx
sbb dl, bl
btc ax, si
and esi, 55
bt cx, 111
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
add bl, 65 # instrumentation
cmovnp cx, si
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
cmovz eax, eax
xor sil, dl
cmovnl rbx, rcx
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
adc al, -58
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
movzx edx, al
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edx
mov rsi, rbx
add rcx, rdx
and rdi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdi], -95
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
cmovnb esi, eax
movsx rsi, bx
add eax, -1796699558
xor cl, bl
adc bl, cl
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
and rbx, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rbx]
cmp cl, cl
and sil, dl
and rax, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -57
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
add rdx, rbx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
imul eax
and dx, 1
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 77
not si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
