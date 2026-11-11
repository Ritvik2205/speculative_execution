.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -122 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rsi]
xchg edx, ecx
or dil, -113
jmp .bb_0.1
.bb_0.1:
or dl, bl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
