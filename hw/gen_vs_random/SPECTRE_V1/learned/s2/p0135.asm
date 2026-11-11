.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov al, bl
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
add edi, -91
and al, dl
adc dl, al
sbb bl, al
add ax, 23362
jmp .bb_0.2
.bb_0.2:
mov dl, bl
cmp cl, 90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
