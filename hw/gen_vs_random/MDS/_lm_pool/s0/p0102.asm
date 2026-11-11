.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], edi
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
and cl, dil
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
or al, 37
or dl, al
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
or al, -58
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
test al, cl
and eax, -574348013
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
