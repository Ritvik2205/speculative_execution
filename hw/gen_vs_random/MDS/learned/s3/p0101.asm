.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 29207
test al, bl
test eax, -571234566
and rdi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdi]
xor dl, -59
jmp .bb_0.1
.bb_0.1:
and rbx, 65
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
and bl, dl
jmp .bb_0.2
.bb_0.2:
test cl, dl
or bl, 13
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx]
test rax, 1000448998
or bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
