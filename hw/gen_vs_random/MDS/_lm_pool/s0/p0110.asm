.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 1
and dil, dil
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
test al, cl
or al, 25
or al, al
or dl, -89
xor dl, -19
and dl, dl
test eax, -1634766116
test edi, -1252846009
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
or cl, dil
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], -86
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and ax, -10351
or sil, -78
or cl, -77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
