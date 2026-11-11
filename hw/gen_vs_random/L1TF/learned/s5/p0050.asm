.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 26813
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
not bl
and rdx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdx]
xor rbx, 2
cmovb rax, rsi
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
lea rdx, qword ptr [rcx + rax + 49]
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
