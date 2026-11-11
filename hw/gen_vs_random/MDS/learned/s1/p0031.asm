.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, dil
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 93
bt ax, cx
test sil, bl
xor cl, 55
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdx]
xor cl, 83
or dl, bl
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -337720409
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
