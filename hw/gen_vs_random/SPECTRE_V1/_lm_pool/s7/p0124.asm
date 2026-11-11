.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
sbb bl, cl
and rdi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdi]
sbb ebx, 25
and rsi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rsi]
sbb al, dl
and rdi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dl
test cl, -62
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rax]
add ebx, -47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
