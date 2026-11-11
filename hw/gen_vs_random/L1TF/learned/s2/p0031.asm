.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 8
or al, -48
jmp .bb_0.1
.bb_0.1:
test al, -70
or cx, 3
test al, -82
and rdx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], dil
and al, -68
and cl, bl
add dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
