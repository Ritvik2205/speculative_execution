.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, bl
or al, dl
and al, -54
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 72
jp .bb_0.2
jmp .exit_0
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
sbb bl, bl
and rbx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rbx], di
not dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
