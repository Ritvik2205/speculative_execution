.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ebx
and bx, 31
sub al, -47
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], cl
and rcx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
xor dl, 19
and dl, al
sbb dl, al
and cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
