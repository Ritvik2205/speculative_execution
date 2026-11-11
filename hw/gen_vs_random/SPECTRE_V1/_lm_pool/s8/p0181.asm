.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ebx, ax
and rsi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rsi]
add al, cl
sbb eax, 1392087754
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], rax
lea cx, qword ptr [rax]
test cl, -62
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 59
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 812406526
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
