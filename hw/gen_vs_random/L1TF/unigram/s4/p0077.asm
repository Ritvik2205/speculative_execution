.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 106
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 25
and rdx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
btc rcx, 78
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rdi], edx
and rdx, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], dil
and rsi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rsi], rax
jmp .bb_0.1
.bb_0.1:
add bl, 119 # instrumentation
cmovle cx, ax
cmp cl, sil
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rsi], 17
and al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
