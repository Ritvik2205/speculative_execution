.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, esi
and rdi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdi]
sub al, -97
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
neg rdi
and rbx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rbx]
lea si, qword ptr [rbx + rdx + 12]
cmovb ax, cx
and rdi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
