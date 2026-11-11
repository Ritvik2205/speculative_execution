.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rcx]
lea rbx, qword ptr [rsi + rdi + 78]
and dl, dl
jmp .bb_0.1
.bb_0.1:
test cl, 83
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], -71
jmp .bb_0.2
.bb_0.2:
and rax, 1994547909
jmp .bb_0.3
.bb_0.3:
cmp dl, -93
cmp dil, 78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
