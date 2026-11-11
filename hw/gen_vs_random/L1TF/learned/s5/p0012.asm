.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, dil
xor cx, 113
test bl, 12
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
or cx, 66
and rsi, 59
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
xchg bl, dil
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
