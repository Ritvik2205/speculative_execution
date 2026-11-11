.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rdx]
add bl, -115 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 2
and rdx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rdx]
cmovs bx, bx
and rdx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rdx]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edx, edi
add bl, 65 # instrumentation
cmovnp si, ax
sbb sil, 108
add sil, 110
imul bx
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
mov rdx, 69
and rbx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 93
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], sil
or dx, cx
or cl, 65
add cl, 97
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
btc rsi, rdi
sbb dil, sil
cmp esi, 87
cmovb rax, rsi
and rdx, 63
movzx ax, bl
and rsi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rax]
cmovp esi, edx
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
imul dx, bx
cmovnb edx, ecx
and rbx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rbx]
imul dx
test rax, -344032571
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 56
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -81
xor sil, 56
adc dl, dl
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], eax
movzx ecx, cl
and rsi, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
