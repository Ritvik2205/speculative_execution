.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
xor sil, -126
or cl, cl
test sil, -55
and rsi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rsi]
test edi, -1252846009
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
or dl, -89
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1626470119
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
xor dx, 94
and ax, 31082
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
