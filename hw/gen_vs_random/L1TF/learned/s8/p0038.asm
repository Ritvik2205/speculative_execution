.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rcx
and sil, 37
and dil, al
and rsi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rsi]
add sil, -61
add esi, -17
xor dil, dl
xor al, dl
jmp .bb_0.1
.bb_0.1:
test al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
