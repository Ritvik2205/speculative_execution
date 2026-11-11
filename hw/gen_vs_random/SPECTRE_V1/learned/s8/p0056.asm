.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, cl
sbb al, 66
setns al
and al, -23
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea bx, qword ptr [rsi + rdx + 43]
jmp .bb_0.2
.bb_0.2:
xchg al, bl
jmp .bb_0.3
.bb_0.3:
lea rax, qword ptr [rcx + rbx]
and cl, -57
test dil, -116
lea rdi, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
