.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], -108
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
and bl, 87
add al, dil
and bl, dl
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
jnbe .bb_0.2
jmp .exit_0
.bb_0.2:
lea dx, qword ptr [rcx + rax + 46]
or dl, sil
sbb rdx, -34
or di, -85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
