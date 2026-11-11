.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], cl
bt rdx, rcx
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
adc rax, rdx
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], bx
and rsi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rsi]
and cl, 54
or ax, 0b1000000000000000 # instrumentation
bsf cx, ax
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
xchg dl, sil
and rdi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], dx
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], sil
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
