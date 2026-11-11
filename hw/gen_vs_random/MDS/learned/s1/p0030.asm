.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -103 # instrumentation
cmovbe bx, bx
xor rdx, -59
test dl, 9
test dil, cl
and cl, 79
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
not al
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 46
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
xor dil, sil
cmovnp rax, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
