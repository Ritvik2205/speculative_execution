.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rcx]
test bl, dil
bts rax, 83
jmp .bb_0.1
.bb_0.1:
and bl, dl
lea rax, qword ptr [rsi + rcx + 64]
xor sil, 64
bts ecx, 164
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
