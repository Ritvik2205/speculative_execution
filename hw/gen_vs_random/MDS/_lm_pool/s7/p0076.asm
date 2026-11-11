.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, 46
or edx, esi
xor rbx, 89
or sil, -78
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
jmp .bb_0.1
.bb_0.1:
test al, -81
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
not sil
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 92
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
test cl, bl
xor rdi, -9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
