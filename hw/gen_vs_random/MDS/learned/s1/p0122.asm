.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edx
xor sil, -126
test di, cx
and dil, -39
or sil, -49
or al, bl
jmp .bb_0.1
.bb_0.1:
xor al, cl
xor dil, al
xor cl, al
test rdi, 75
test sil, bl
or al, -58
not sil
test al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
