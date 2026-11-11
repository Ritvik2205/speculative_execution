.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 41
imul dl
add rsi, rcx
imul bx
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], ax
and rcx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rcx]
cmp rcx, 46
sub rbx, 91
and rdi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdi]
inc si
cmovnp rbx, rbx
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], bl
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 38
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 97
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
cmovle rcx, rdi
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], si
and dl, cl
movsx ecx, bx
sbb di, -76
mov al, al
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 71
and rax, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rax]
sbb al, -101
cmovb ecx, edi
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf edi, edx
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 68
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 13
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -83
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rdx
cmp rdx, 71
sbb dl, al
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dl
or edx, edi
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 108
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
add rbx, rdi
and rsi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rsi]
btc rsi, 140
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
not dx
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], bl
xor edx, edi
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
