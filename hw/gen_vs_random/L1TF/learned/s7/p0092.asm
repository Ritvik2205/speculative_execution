.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rcx]
sub cl, 86
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
cmovz rcx, rdi
and rcx, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rcx]
sbb ebx, -116
and rdi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rbx
and rbx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rbx]
or al, -5
inc edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
