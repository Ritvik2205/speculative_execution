.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and esi, 55
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
add rcx, rdx
sub bl, bl
xor cl, bl
cmp cl, cl
btc ax, si
cmovz eax, eax
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edx
sbb dl, bl
and rdx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdx]
cmovnl rbx, rcx
cmovnb esi, eax
movzx edx, al
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rax]
or dl, bl
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
add eax, -1796699558
and rbx, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rbx]
adc bl, cl
add bl, 65 # instrumentation
cmovnp cx, si
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
adc al, -58
not ecx
bt cx, 111
add rdx, rbx
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 77
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
movsx rsi, bx
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
imul eax
and sil, dl
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and dx, 1
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
cmovnb esi, edx
xor sil, dl
not si
and rdi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdi], -95
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -57
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
mov rsi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
