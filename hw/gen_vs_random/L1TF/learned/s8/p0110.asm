.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -37
test dl, -37
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, rax
bt edi, ecx
or dl, bl
cmovle rbx, rsi
test al, -56
and rdx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdx]
or ax, -10161
and rax, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rax]
or dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
