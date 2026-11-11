.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], ebx
or al, -17
or dl, bl
test sil, al
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 5
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
test bl, -114
xor dil, -3
and cl, -19
xor rax, -91
and dil, 125
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
