.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ecx, 8
and dl, -73
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
or dil, al
xor al, -19
and ax, 5001
xor ecx, 8
xor cl, dl
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 19
or dl, 85
test rcx, -613256812
or rdi, -11
test al, 127
test edx, -372470678
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
