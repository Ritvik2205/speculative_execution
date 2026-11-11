.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], bx
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
add dl, 47
jno .bb_0.2
jmp .bb_0.3
.bb_0.2:
and cl, dl
test bl, -8
and rcx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rcx]
jnbe .bb_0.3
jmp .bb_0.4
.bb_0.3:
js .bb_0.4
jmp .exit_0
.bb_0.4:
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 20
adc dil, sil
and dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
