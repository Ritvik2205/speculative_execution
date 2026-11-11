.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs dx, bx
and rbx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rbx]
xor sil, bl
and al, dil
jmp .bb_0.1
.bb_0.1:
mov edi, esi
sbb cl, dl
setnz al
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rdi]
jmp .bb_0.3
.bb_0.3:
sbb bl, dl
and eax, -409673666
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
