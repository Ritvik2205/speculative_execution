.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs cx, dx
lea ecx, qword ptr [rax]
and al, -68
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
