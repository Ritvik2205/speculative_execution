.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs ax, dx
and al, -68
add bl, 68
adc al, cl
test sil, 29
adc cl, -34
and cx, -79
lea rdi, qword ptr [rbx + rsi + 20302]
test bl, 45
or eax, 1495028166
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
