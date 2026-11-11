.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb al, cl
xor eax, 181978569
and rcx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rcx]
cmp sil, 88
adc al, 69
cmp dx, 89
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
cmp bl, cl
sub al, al
add bl, 38 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rcx]
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], 95
neg cl
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 79
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 48
sub rbx, 29
and rax, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rax]
imul cl
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rsi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rsi]
add cl, -21 # instrumentation
adc rsi, 15
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
xchg si, cx
add rcx, rbx
and al, -36
sbb cl, 19
cmp ax, -15409
xchg rdx, rbx
and rax, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], 21
add dl, 48 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], sil
xor bl, 93
cmp dl, dl
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rdx], ax
sbb dil, al
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], dx
and rdi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rdx]
or esi, 84
and rax, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rax]
dec rdi
cmovp ecx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
