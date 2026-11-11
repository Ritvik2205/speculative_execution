.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, edx
add rcx, 23
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
mov al, sil
or al, dil
test bl, -8
and rax, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rax]
setb dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
