.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 40 # instrumentation
btc rax, rax
test bl, -92
test dil, -126
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdi
jmp .bb_0.1
.bb_0.1:
test dil, -126
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], al
jb .bb_0.3
jmp .bb_0.4
.bb_0.3:
test dl, 84
jmp .bb_0.4
.bb_0.4:
lea cx, qword ptr [rcx]
add dil, dil
test dil, -126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
