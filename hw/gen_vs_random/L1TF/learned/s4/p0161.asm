.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, cl
adc dil, al
and esi, 46
and rdi, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rdi]
or eax, 287965578
or al, -57
jmp .bb_0.1
.bb_0.1:
test edx, -541774418
add sil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
