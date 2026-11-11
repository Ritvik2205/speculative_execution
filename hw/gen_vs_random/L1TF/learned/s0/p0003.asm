.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc al
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
xor rbx, 22
jmp .bb_0.1
.bb_0.1:
and esi, 62
jmp .bb_0.2
.bb_0.2:
test rdx, 29
and dl, dil
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], -57
jmp .bb_0.4
.bb_0.4:
xchg bl, dil
test al, -56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
