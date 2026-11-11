.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 100
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
cmp bl, dl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
setnb dil
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
adc bx, 83
and cl, -57
js .bb_0.3
jmp .exit_0
.bb_0.3:
cmp al, 13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
