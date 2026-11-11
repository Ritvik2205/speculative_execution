.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 100
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
and bl, -65
cmp rdi, 37
test al, 59
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
sbb al, -14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
