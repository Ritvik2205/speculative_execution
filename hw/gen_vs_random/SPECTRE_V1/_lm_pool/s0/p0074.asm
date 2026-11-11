.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 99
and rdx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
sbb bl, bl
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
add bl, -95
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
sub cl, bl
sub al, -82
and rsi, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
