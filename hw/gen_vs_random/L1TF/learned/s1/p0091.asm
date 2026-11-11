.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 73
dec dil
and rdi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dil
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], -25
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 57
jmp .bb_0.3
.bb_0.3:
and ecx, 72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
