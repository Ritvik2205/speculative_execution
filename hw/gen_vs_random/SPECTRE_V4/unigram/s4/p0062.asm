.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec rsi
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 97
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
cmovnp bx, dx
bts edi, 167
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], 9
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
cmovb edi, eax
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
and rcx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rcx]
add al, bl
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], cx
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
cmovp ebx, ebx
and rbx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rbx], si
and rcx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rcx]
imul cx, di
cmovnb edx, edi
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
bt edx, 99
and rsi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rsi]
btc rdi, 167
and rcx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rcx]
xor eax, -437098167
or cl, dil
cmovnp rsi, rax
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 53
and rbx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rbx]
cmovle rcx, rax
and rax, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
cmovnbe rsi, rdi
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], bl
sub rcx, 71
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], 69
adc rdx, 64
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
bts eax, 209
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
bt ecx, 56
cmp bx, 44
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
movzx bx, bl
add cl, 16
mov dl, dl
sbb edi, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
