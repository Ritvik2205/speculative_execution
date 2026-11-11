.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 60
or cl, -77
test ax, 4430
or dl, cl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
or cl, 6
and rcx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rcx]
test dl, 48
not al
xor cl, 83
or bl, al
or dil, -41
jmp .bb_0.2
.bb_0.2:
test sil, dil
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
