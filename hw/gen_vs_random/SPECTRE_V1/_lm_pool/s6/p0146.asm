.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx esi, bx
xchg dl, al
cmp rsi, 53
sbb bl, al
jns .bb_0.1
jmp .exit_0
.bb_0.1:
test cl, -62
add bl, sil
cmp rcx, 46
mov cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
