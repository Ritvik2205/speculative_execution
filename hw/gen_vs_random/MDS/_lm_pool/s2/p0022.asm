.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor esi, 57
or sil, al
or rax, -141551502
or dl, 85
test dl, 27
xor dil, -3
or sil, -49
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and sil, 74
jmp .bb_0.1
.bb_0.1:
not bl
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
test cl, dl
xor dl, -43
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
