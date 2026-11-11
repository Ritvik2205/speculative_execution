.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, sil
or al, sil
and rcx, -29
not di
dec al
sbb cl, 105
and cl, -57
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
