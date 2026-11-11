.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdx
xor dl, al
and dl, bl
test cl, -62
sbb al, dl
and rcx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rcx]
xchg dil, bl
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rdx]
sub cx, 24
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], 17
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
