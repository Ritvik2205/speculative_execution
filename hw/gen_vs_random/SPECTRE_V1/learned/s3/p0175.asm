.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, -47
sub cl, -47
or ax, 18658
test dl, -105
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], dl
sub al, dl
cmp al, -77
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 55
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], -83
test eax, 88788211
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
