.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
and rdx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdx]
dec bl
xor al, sil
xor al, cl
adc sil, 14
and bl, cl
add ax, -24961
add al, cl
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], dil
test al, -82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
