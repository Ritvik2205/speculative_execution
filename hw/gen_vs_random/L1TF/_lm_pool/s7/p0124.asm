.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 27
sbb bl, cl
and rdi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdi]
and rax, 1994547909
and rax, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rax]
xor al, 45
and rcx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
test cl, 89
and rsi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rsi]
cmovnle rdx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
