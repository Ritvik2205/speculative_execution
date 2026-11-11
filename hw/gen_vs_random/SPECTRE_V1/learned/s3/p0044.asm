.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rbx]
sbb al, -14
sub sil, -18
add bl, cl
and rdx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rdx]
inc bl
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
setno dl
sub dil, -111
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
