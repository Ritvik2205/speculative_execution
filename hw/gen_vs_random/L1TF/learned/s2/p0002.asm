.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -104 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], di
and al, -68
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
inc esi
jmp .bb_0.2
.bb_0.2:
cmp al, -119
sbb al, cl
cmovb bx, ax
lea rdi, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
