.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 69
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 55
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 21
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rcx
cmp dl, -93
lea ax, qword ptr [rcx + rsi + 42]
jmp .bb_0.1
.bb_0.1:
add bl, 89 # instrumentation
sbb al, cl
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], dil
cmovbe ebx, edi
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
