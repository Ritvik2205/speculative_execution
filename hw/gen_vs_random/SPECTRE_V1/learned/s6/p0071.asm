.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub bl, -6
and rdx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rax]
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
bt edx, 63
and cl, bl
jnz .bb_0.2
jmp .exit_0
.bb_0.2:
sbb bl, cl
or ax, 18658
add al, -13
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
