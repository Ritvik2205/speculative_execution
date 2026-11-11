.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
and rsi, 0b1111111111111 # instrumentation
movzx rcx, byte ptr [r14 + rsi]
xor dl, sil
jmp .bb_0.1
.bb_0.1:
test al, -56
and cl, dil
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], 125
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
