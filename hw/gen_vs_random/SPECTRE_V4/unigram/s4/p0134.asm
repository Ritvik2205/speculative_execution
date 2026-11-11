.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rdx]
sbb dl, sil
test cl, al
cmp bl, -16
and rax, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rdx]
or sil, -47
add bl, bl
add dl, cl
bt di, dx
neg ecx
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rbx]
adc bl, 97
cmp al, bl
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
xor al, 48
mov dx, 11552
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rdx
and rdi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rax
and rdx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdx]
cmovle rcx, rbx
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], 74
mov cx, -22668
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rdx
add sil, -18
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi]
cmp sil, -100
and rcx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rcx]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
cmovnz eax, ecx
and bl, bl
and rcx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], eax
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], 1
xor al, al
movsx edx, cl
add sil, al
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], 73
cmovnz rbx, rcx
test dil, -5
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], dx
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], ax
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
