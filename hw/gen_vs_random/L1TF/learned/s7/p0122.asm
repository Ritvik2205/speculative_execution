.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rsi, rsi
test bl, -92
add al, -80
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
lea esi, qword ptr [rax]
jmp .bb_0.1
.bb_0.1:
test al, 15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
