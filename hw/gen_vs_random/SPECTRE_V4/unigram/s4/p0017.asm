.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, bl
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
sbb dl, -99
cmovnle ebx, eax
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rax, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
imul bl
and rdx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
cmp dl, 9
mov cl, 38
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
cmp al, sil
and rdi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdi]
or bx, ax
movzx eax, al
mov bl, 60
mul edx
dec cx
dec ecx
btc rdi, 167
add al, -71 # instrumentation
adc al, dl
or bl, 19
sbb al, 123
dec rsi
cmp cl, al
sub rbx, 69
add dx, -90
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
test edx, 573099753
cmovp si, dx
or si, ax
sub dl, al
and dil, al
bt eax, 84
cmovnp rbx, rdx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rsi
and rsi, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rsi]
add ecx, edi
and rax, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rax]
sub dl, dil
and rdx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rdx]
cmovle rbx, rcx
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
