.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 65 # instrumentation
lfence
cmovnp cx, si 
lfence
cmovnb esi, edx 
lfence
and sil, dl 
lfence
sbb dl, bl 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
sub rdx, qword ptr [r14 + rbx] 
lfence
add rcx, rdx 
lfence
adc al, 69 
lfence
not ecx 
lfence
xor cl, bl 
lfence
add rdx, rbx 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
mov dword ptr [r14 + rdx], eax 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
mul qword ptr [r14 + rsi] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmp dword ptr [r14 + rcx], -105 
lfence
adc bl, cl 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovnp rsi, qword ptr [r14 + rdx] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
mov qword ptr [r14 + rdi], rax 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
and dword ptr [r14 + rsi], edx 
lfence
and dx, 1 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
and qword ptr [r14 + rdi], 77 
lfence
not si 
lfence
cmovnb esi, eax 
lfence
cmovz eax, eax 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
xor qword ptr [r14 + rsi], -57 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
neg word ptr [r14 + rdi] 
lfence
bt cx, 111 
lfence
sub bl, bl 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
test qword ptr [r14 + rbx], rdx 
lfence
btc ax, si 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
movzx di, byte ptr [r14 + rdx] 
lfence
mov rsi, rbx 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
imul rcx, qword ptr [r14 + rdi], -95 
lfence
imul eax 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
or byte ptr [r14 + rbx], 0b1000 # instrumentation
lfence
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
lfence
mov ax, 1 # instrumentation
lfence
idiv byte ptr [r14 + rbx] 
lfence
xor sil, dl 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
or byte ptr [r14 + rcx], dl 
lfence
cmovnl rbx, rcx 
lfence
and rdx, 0b1111111111000 # instrumentation
lfence
lock xor dword ptr [r14 + rdx], edi 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
xor al, byte ptr [r14 + rbx] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
btc qword ptr [r14 + rax], 6 
lfence
movsx rsi, bx 
lfence
or dl, bl 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
or di, word ptr [r14 + rdx] 
lfence
cmp cl, cl 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovb rsi, qword ptr [r14 + rax] 
lfence
movzx edx, al 
lfence
add eax, -1796699558 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
movsx rcx, byte ptr [r14 + rbx] 
lfence
and esi, 55 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
