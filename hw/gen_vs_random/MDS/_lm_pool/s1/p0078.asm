.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 60
test cl, dl
and bl, sil
not sil
or al, sil
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], edx
xor ebx, 22
bt dx, bx
or sil, cl
or rdi, -11
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], sil
test al, dl
test al, bl
xor dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
