.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], edx
and rcx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], 88
bt si, dx
or dl, -8
or sil, cl
or cl, cl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
or al, 16
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 0
test rbx, 28
or al, dl
bt dx, si
xor sil, 110
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
