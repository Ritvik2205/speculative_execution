.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rdx]
and rbx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rbx]
xor sil, bl
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 35
sub rax, 57846954
jmp .bb_0.1
.bb_0.1:
test al, bl
add sil, bl
or dx, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
