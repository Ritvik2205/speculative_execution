.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], dx
test bl, -8
cmp ax, 7046
and dl, dil
test al, 40
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jno .bb_0.2
jmp .bb_0.3
.bb_0.2:
and cl, sil
cmp cl, al
jle .bb_0.3
jmp .exit_0
.bb_0.3:
bswap rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
