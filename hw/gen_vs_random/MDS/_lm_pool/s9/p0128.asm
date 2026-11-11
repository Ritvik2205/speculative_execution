.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ax, si
bts rax, 77
jmp .bb_0.1
.bb_0.1:
test al, sil
or bl, -125
and cl, 79
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
test bl, sil
xor al, -4
xor dil, 81
not dil
or sil, al
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ebx
xor sil, 27
or al, -17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
