.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, bl
jmp .bb_0.1
.bb_0.1:
or al, -58
xor al, 122
test cl, sil
xor al, 8
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
test rsi, 99
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 16
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
not bl
btr di, si
xor rbx, 89
or rsi, 6
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
test dil, -51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
