.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rcx
add al, al
and rsi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], -34
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -29
jmp .bb_0.1
.bb_0.1:
add al, 44 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rcx]
btr rdx, 203
sub di, cx
sub edi, 27
and rsi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rsi]
sub rsi, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
