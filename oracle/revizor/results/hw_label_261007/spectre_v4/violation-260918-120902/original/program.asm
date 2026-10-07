.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 65 # instrumentation
cmovnp cx, si 
cmovnb esi, edx 
and sil, dl 
sbb dl, bl 
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx] 
add rcx, rdx 
adc al, 69 
not ecx 
xor cl, bl 
add rdx, rbx 
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax 
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi] 
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105 
adc bl, cl 
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx] 
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax 
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edx 
and dx, 1 
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 77 
not si 
cmovnb esi, eax 
cmovz eax, eax 
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -57 
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi] 
bt cx, 111 
sub bl, bl 
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx 
btc ax, si 
and rdx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdx] 
mov rsi, rbx 
and rdi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdi], -95 
imul eax 
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx] 
xor sil, dl 
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl 
cmovnl rbx, rcx 
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi 
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx] 
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6 
movsx rsi, bx 
or dl, bl 
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx] 
cmp cl, cl 
and rax, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rax] 
movzx edx, al 
add eax, -1796699558 
and rbx, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rbx] 
and esi, 55 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
