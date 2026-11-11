.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 20
add bl, -95
add dil, dl
xor al, dl
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea edx, qword ptr [rcx]
jmp .bb_0.2
.bb_0.2:
adc cl, bl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
cmovle di, si
and rcx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
