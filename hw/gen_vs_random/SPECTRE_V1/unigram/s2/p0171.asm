.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rax]
imul rsi, rax
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], -108
cmovno bx, cx
and rdx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdx]
imul rax, rdx, 76
bts dx, 207
xor rcx, 74
jp .bb_0.1
jmp .exit_0
.bb_0.1:
mov edx, 34
and rbx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rbx]
or ax, 0b1000000000000000 # instrumentation
bsf cx, ax
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
mov rcx, 97
cmp ecx, 1
cmovnle rcx, rax
sub cl, -47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
