.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
jmp .bb_0.1
.bb_0.1:
or sil, -49
jmp .bb_0.2
.bb_0.2:
or dl, sil
or dil, bl
jmp .bb_0.3
.bb_0.3:
test bl, -114
and bl, 68
and cl, cl
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
jmp .bb_0.4
.bb_0.4:
test esi, 1857129931
test sil, -96
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdx
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
