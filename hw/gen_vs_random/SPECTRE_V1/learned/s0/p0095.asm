.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, 122
add dl, 47
add bl, 70
sbb eax, 1830317432
adc cl, -81
xchg sil, al
neg al
xchg eax, ebx
and cl, -57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
