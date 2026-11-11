.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
test al, 59
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 94
xor ax, 913
jnl .bb_0.1
jmp .bb_0.2
.bb_0.1:
adc cx, -30
lea rdx, qword ptr [rcx + rbx + 16]
lea si, qword ptr [rdx + rcx + 28]
jmp .bb_0.2
.bb_0.2:
or dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
