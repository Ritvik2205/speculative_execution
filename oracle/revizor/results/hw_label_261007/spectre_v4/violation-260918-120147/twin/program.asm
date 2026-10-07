.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, bl 
cmovb edi, ebx 
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx] 
inc al 
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl 
lfence
cmovs dx, di 
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -70 
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl 
lfence
mov al, dl 
sub al, 119 
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx 
lfence
sbb bl, 57 
cmovns bx, di 
mov rcx, 4219775168754920203 
sub al, dl 
cmovo rbx, rdx 
xor bx, di 
not rbx 
test cl, -89 
and rsi, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rsi] 
cmovnbe rcx, rdi 
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx] 
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edx 
lfence
btc rsi, 140 
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax] 
lfence
imul sil 
add dl, 110 # instrumentation
movsx ax, dl 
and rdx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdx] 
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], cx 
lfence
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edx, eax 
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
lfence
bsr di, word ptr [r14 + rbx] 
add bl, -102 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx] 
sub eax, 2 
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], si 
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], si 
lfence
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx], -41 
add bl, cl 
xor edx, eax 
mov rcx, 5862286138240743445 
and rax, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rax] 
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx] 
add dl, 118 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx] 
lfence
and rsi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rsi] 
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edi 
lfence
sbb dx, si 
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 127 
lfence
sbb dl, bl 
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx] 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
