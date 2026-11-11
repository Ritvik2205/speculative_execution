.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], 52
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
sbb sil, dl
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
xchg ebx, esi
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], cl
cmovp ebx, ebx
add bl, -18 # instrumentation
cmovs cx, di
sbb dx, 2
cmovbe cx, bx
add dil, 75
cmovs rbx, rbx
and rcx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rcx], 24
mov al, al
or al, -47
add bl, -49
and rax, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rax]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
mov dil, dil
adc dl, 76
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rdx
or dl, -26
btc rax, 124
sbb cl, al
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], sil
cmovnp ecx, ebx
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], eax
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rax]
adc al, dl
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], 44
xor cl, 88
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], edx
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], ebx
dec rdi
btr di, 245
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -115
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], bx
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rdx
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], 39
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -2089960014
sbb dil, cl
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 72
sbb cl, 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
