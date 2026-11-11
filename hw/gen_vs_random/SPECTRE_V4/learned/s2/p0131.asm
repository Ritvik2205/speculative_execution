.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, dil
and cl, bl
and al, -1
and rbx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rbx]
sub cl, al
sbb cl, 40
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
mov al, sil
test esi, -222751961
or bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
