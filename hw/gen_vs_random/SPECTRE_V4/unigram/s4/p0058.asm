.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rax], rax
inc eax
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
or bx, -111
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rax]
not cx
and rdi, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdi]
sbb dil, 65
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
sub rax, -701741274
cmovo rax, rsi
and rdi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
and rbx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rbx]
sub ebx, 49
movzx ecx, al
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], 83
cmovs rdx, rax
test rbx, 50
neg sil
cmovnle cx, bx
neg bl
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], bl
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rbx]
imul bx, ax, 90
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 86
adc dl, sil
sub al, 99
sub sil, -50
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
cmovnle cx, dx
sbb sil, 108
and ax, 35
and rdi, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdi]
cmovs esi, ecx
movzx ecx, cx
add cl, -37 # instrumentation
adc eax, -39
and rdi, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rdi]
and ax, 35
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 46
and rax, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rax]
imul dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
