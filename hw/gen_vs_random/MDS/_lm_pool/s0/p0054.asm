.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -78
and rcx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
or sil, -78
jmp .bb_0.2
.bb_0.2:
or ecx, ebx
jmp .bb_0.3
.bb_0.3:
or cl, 6
test sil, -96
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
jmp .bb_0.4
.bb_0.4:
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
or dl, cl
xor cl, dil
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and sil, 89
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
or cl, 119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
