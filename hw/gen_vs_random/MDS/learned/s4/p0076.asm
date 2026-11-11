.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, edx
or bl, sil
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 17
and dx, 3
bt bx, cx
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edx
or al, 16
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
xor cl, 98
or ebx, -15
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
test ebx, -2015966884
test al, dil
or dl, sil
or dl, 85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
