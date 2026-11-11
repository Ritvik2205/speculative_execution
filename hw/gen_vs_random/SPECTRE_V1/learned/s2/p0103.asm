.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rsi]
add dil, -75
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dil
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
sbb cl, dl
and bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
