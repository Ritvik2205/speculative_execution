.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
inc eax
adc dl, 107
cmp bl, dl
and dx, 25
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
