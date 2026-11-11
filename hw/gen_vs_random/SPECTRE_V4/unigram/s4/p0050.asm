.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rsi, 236
and rdx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rdx
and rax, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
adc rsi, 82
cmovo cx, cx
imul ax, cx
cmovnp ecx, edx
or dil, -16
mov rdx, rcx
imul rsi, rsi
cmovnb ecx, ebx
movzx rdx, bx
and rsi, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rcx
or al, cl
or ebx, -82
cmp bx, 113
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdx], ax
sbb dil, al
add dl, 122 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], rcx
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rbx], si
and rax, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
or rsi, rbx
and edx, ecx
and rdx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rsi
test al, 57
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rbx
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rdi
cmp cl, dl
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], 71
sub rsi, rcx
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], ebx
and cl, bl
movzx edx, dl
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 40
cmp bl, al
and rcx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rcx]
add bl, 7 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
xor dil, 117
add edi, 100
sbb bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
