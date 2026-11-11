.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, -113
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
or al, -57
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rdx]
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rcx]
jmp .bb_0.3
.bb_0.3:
test eax, -2032743474
jmp .bb_0.4
.bb_0.4:
jmp .bb_0.5
.bb_0.5:
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
