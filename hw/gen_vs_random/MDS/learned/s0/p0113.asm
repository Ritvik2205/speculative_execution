.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
or cl, dil
xor rax, -773894210
test dl, dil
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], ax
and edx, -44
or al, -58
or sil, -49
jmp .bb_0.1
.bb_0.1:
or ecx, esi
bts si, ax
or dl, cl
bt ax, di
test rbx, 57
xor al, bl
xor rbx, 89
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
