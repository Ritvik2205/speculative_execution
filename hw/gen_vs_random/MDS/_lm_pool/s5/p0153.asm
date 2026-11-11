.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, -13
test bl, -14
test si, 84
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
or bl, -54
xor bl, cl
xor al, 8
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
or dil, -76
xor rax, -843636050
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rax, -731384280
test al, sil
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
