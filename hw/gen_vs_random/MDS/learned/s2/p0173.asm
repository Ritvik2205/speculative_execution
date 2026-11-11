.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dil
or cl, dl
and rdi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdi]
or al, -78
test edi, -1252846009
test al, dil
or sil, cl
jmp .bb_0.1
.bb_0.1:
and dil, sil
or rax, 302048971
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
and dil, dil
or bl, 43
bt dx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
