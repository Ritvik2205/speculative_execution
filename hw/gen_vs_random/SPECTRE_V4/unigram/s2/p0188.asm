.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe eax, edi
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
sub edi, edx
sub si, si
or rcx, 1
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 56
and bl, cl
mov al, al
cmovnz rbx, rdx
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
cmp rdi, 28
or cl, -55
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rax], di
cmovns edx, eax
inc edx
imul sil
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], dx
and dil, 8
and rsi, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rsi]
sub sil, 71
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
cmovnp rcx, rbx
adc cl, -54
and rcx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rcx]
cmovnp ax, si
and rdx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], bl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
or edi, -64
btc rcx, 33
cmp rbx, -3
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], sil
cmovnz edi, edi
xor cl, -15
mul cx
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
sub ax, 23
adc rbx, 60
mul ax
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 30
and rdi, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
cmp ecx, 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
