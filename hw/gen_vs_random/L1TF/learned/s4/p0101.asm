.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], 8
and rbx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rbx]
cwde
jmp .bb_0.1
.bb_0.1:
or dil, -113
xor dl, cl
or cx, 44
sbb dl, cl
and dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
