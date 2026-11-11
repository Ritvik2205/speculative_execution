.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
cmp al, bl
test cl, -24
sbb dl, 127
sbb dil, dil
add cx, -103
adc al, dl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
cmp dl, 71
dec dl
sbb bl, al
cmp al, 62
add dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
