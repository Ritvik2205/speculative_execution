.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, -98
test al, 40
setnb cl
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rax
sub dx, -23
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
adc bl, 88
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
jp .bb_0.2
jmp .exit_0
.bb_0.2:
cmovle rax, rsi
cmp sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
