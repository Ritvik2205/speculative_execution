.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc bl
cmovp bx, di
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
xor rax, -2072052278
btr ax, cx
add dil, 88
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 42
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 16
and rdi, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
