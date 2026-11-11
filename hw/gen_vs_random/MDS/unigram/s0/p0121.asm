.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovbe si, cx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
cmovnbe dx, si
or rsi, 72
and dx, si
and bl, 19
and dl, 107 # instrumentation
cmovs edx, edi
and rax, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 90
and rsi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rsi]
bt ax, di
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 630928397
and cl, 95 # instrumentation
cmovns rbx, rbx
xor cl, 93
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], bx
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rdx
and dl, 113 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rbx]
and al, -37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
