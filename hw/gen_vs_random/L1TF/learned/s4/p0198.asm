.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, -79
inc bl
jmp .bb_0.1
.bb_0.1:
add sil, 65 # instrumentation
cmovo rsi, rbx
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], -32
lea si, qword ptr [rcx + rbx + 98]
cmovb dx, cx
btc bx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
