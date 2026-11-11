.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, bl
dec dl
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], dx
test eax, 88788211
and rbx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rbx]
sub dil, -32
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and sil, dil
or dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
