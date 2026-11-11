.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, -33
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rbx
and bl, -65
and rsi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
