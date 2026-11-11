.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 13
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax], 104
and rbx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rbx]
sbb dil, -93
lea eax, qword ptr [rdx]
and rcx, -29
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 2
lea rax, qword ptr [rdi + rdi + 70]
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], bl
or rax, rax
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], -12722
cmovz ax, ax
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rbx], dx
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], bl
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
