.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], dil
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
lea ax, qword ptr [rsi]
bswap rcx
and rax, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rax]
neg eax
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], 36
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
cmovbe rsi, rdx
movsx ax, cl
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rdx
cmovnbe dx, bx
imul al
add bl, 52 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rax]
add dl, -47 # instrumentation
sbb bl, 34
not ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
