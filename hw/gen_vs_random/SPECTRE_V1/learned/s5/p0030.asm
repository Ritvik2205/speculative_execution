.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, sil
lea rax, qword ptr [rdx + rdx + 83]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
test bl, -8
xor dl, dil
js .bb_0.2
jmp .bb_0.3
.bb_0.2:
mov dil, cl
jmp .bb_0.3
.bb_0.3:
add al, -72
add al, -44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
