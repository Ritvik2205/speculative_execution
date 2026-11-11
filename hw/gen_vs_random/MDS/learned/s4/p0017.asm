.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 123 # instrumentation
cmovo cx, si
and esi, 97
xor al, sil
test ecx, -1843375753
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
and al, 75
xor al, 122
or dil, -76
test dl, dil
and ax, 27170
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
jmp .bb_0.3
.bb_0.3:
or al, sil
xor cl, al
and rax, 1886208862
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
