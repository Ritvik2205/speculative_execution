.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, sil
add rax, 909978580
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rax]
xor dl, bl
or rax, 1362710293
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dil
or dl, al
sbb eax, -403815802
sbb sil, bl
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 1
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
