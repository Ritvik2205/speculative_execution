.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 48
and cl, al
and rax, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rax]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sub cl, -47
setno dl
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
mov dil, bl
cmp al, dil
sub al, -66
and cl, -57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
