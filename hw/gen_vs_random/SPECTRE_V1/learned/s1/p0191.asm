.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
inc rax
sub al, dil
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rdx]
and dl, dil
sbb edx, 105
jp .bb_0.2
jmp .exit_0
.bb_0.2:
sbb bl, dil
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
test al, 42
jno .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
