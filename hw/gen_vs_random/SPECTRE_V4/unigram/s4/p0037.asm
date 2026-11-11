.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, al
cmovnz di, si
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], bx
mov dx, si
cmovl rsi, rax
or cl, cl
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], sil
and rdx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rdi
or eax, -863161215
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 66
and di, ax
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rsi]
sbb cl, 12
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], 75
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], bl
or al, al
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 2
and rsi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rsi]
add dil, dl
and dx, -107
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rdi
and rdi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdi]
cmovs bx, dx
add al, 105 # instrumentation
cmovl edi, eax
or ax, 27604
and rsi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rsi]
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
add bl, 95 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdx]
adc al, al
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
or al, bl
add dl, cl
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], 69
cmp al, cl
or si, ax
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 48
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 7
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -21
sbb rbx, 20
add bl, -39 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdi]
cmovle ax, ax
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 36
and rsi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
