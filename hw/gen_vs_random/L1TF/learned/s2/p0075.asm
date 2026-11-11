.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rcx, rcx
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
or al, al
jmp .bb_0.1
.bb_0.1:
lea cx, qword ptr [rdi + rcx + 55876]
cmovns rsi, rcx
or rcx, 10
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
sbb dil, 50
and rsi, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rsi]
test esi, 61
bswap rbx
sbb ecx, 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
