.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 80
xor sil, -14
and cl, -6
and rdi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdi]
or bl, 100
xor dil, al
jmp .bb_0.1
.bb_0.1:
test esi, 1857129931
test sil, -55
xor rax, -773894210
not dl
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ebx
test al, sil
and eax, 454700988
and al, bl
bts si, cx
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
