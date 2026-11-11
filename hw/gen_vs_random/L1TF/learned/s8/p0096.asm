.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 68
and cl, 55
or bl, 114
and rdi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rcx
jmp .bb_0.1
.bb_0.1:
test dl, -37
not dl
jmp .bb_0.2
.bb_0.2:
cbw
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], bl
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
