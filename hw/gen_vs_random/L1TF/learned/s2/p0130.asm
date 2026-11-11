.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdx, qword ptr [rdx]
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
xor cl, dil
and ax, 26813
add dil, -7
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
setno bl
jmp .bb_0.3
.bb_0.3:
xor esi, edx
test al, -70
xor si, -50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
