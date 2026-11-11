.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, 60
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -112
test bl, -8
not ecx
jle .bb_0.1
jmp .exit_0
.bb_0.1:
sub sil, dl
sub rax, -1628299544
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], di
sbb sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
