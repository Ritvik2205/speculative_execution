.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, bl
or al, bl
add al, 3
cmp al, cl
cmp dil, cl
add cl, bl
xchg sil, cl
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jno .bb_0.2
jmp .exit_0
.bb_0.2:
adc eax, 1725322202
cmp dl, -115
and bl, -43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
