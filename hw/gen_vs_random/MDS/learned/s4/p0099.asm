.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
or dil, -78
add cl, 33
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
xor edx, -13
not sil
test rcx, -613256812
xor dl, dil
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
xor dl, -43
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 87
and edi, 23
and ax, -12519
test ax, -20900
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
