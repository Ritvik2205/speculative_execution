.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -114
and rsi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rsi]
xor dl, 40
or al, bl
xor rcx, 71
xor sil, -14
bt bx, 253
jmp .bb_0.1
.bb_0.1:
test rdi, 17
and al, 49
test al, -81
and cx, -8
bt edx, eax
xor sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
