.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdi, rdi
sbb al, sil
lea ax, qword ptr [rdx]
lea si, qword ptr [rcx]
xor cl, 71
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
setbe dl
setz dl
test al, -71
and rdx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
