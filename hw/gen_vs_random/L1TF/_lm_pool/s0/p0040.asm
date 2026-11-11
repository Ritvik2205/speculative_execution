.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dx, 94
and rax, 1994547909
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 12
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], bl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
not cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
