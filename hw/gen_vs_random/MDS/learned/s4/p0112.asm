.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr ax, si
sbb sil, 48
test al, dl
test cl, 54
xor dil, -124
xor rsi, -117
test dil, -51
and edi, 23
and rcx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rcx]
and al, cl
or bl, dil
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
or dl, dil
and rax, -731384280
jmp .bb_0.1
.bb_0.1:
or dil, 12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
