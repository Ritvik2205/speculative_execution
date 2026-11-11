.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -103 # instrumentation
cmovbe cx, cx
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -121
lea ax, qword ptr [rbx]
btc dx, cx
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
mov dl, bl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
