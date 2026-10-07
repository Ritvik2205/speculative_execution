.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, bl 
lfence
cmovb edi, ebx 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
mov sil, byte ptr [r14 + rcx] 
lfence
inc al 
lfence
and rdx, 0b1111111111000 # instrumentation
lfence
lock or byte ptr [r14 + rdx], dl 
lfence
cmovs dx, di 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmp qword ptr [r14 + rcx], -70 
lfence
and rdi, 0b1111111111000 # instrumentation
lfence
lock sbb byte ptr [r14 + rdi], cl 
lfence
mov al, dl 
lfence
sub al, 119 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
lock xor dword ptr [r14 + rax], ebx 
lfence
sbb bl, 57 
lfence
cmovns bx, di 
lfence
mov rcx, 4219775168754920203 
lfence
sub al, dl 
lfence
cmovo rbx, rdx 
lfence
xor bx, di 
lfence
not rbx 
lfence
test cl, -89 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
movzx ecx, word ptr [r14 + rsi] 
lfence
cmovnbe rcx, rdi 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovle cx, word ptr [r14 + rdx] 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock xor dword ptr [r14 + rcx], edx 
lfence
btc rsi, 140 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
inc word ptr [r14 + rax] 
lfence
imul sil 
lfence
add dl, 110 # instrumentation
lfence
movsx ax, dl 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovnp ecx, dword ptr [r14 + rdx] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
mov word ptr [r14 + rcx], cx 
lfence
or eax, 0b1000000000000000000000000000000 # instrumentation
lfence
bsf edx, eax 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
lfence
bsr di, word ptr [r14 + rbx] 
lfence
add bl, -102 # instrumentation
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
adc bl, byte ptr [r14 + rdx] 
lfence
sub eax, 2 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmp word ptr [r14 + rdx], si 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
and word ptr [r14 + rcx], si 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
imul ax, word ptr [r14 + rbx], -41 
lfence
add bl, cl 
lfence
xor edx, eax 
lfence
mov rcx, 5862286138240743445 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
movsx edi, word ptr [r14 + rax] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
imul dx, word ptr [r14 + rcx] 
lfence
add dl, 118 # instrumentation
lfence
and rbx, 0b1111111111000 # instrumentation
lfence
lock not qword ptr [r14 + rbx] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovnz ax, word ptr [r14 + rsi] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
or dword ptr [r14 + rax], edi 
lfence
sbb dx, si 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
or word ptr [r14 + rbx], 127 
lfence
sbb dl, bl 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
mov al, byte ptr [r14 + rcx] 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
