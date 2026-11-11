.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -92
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
test bl, -8
lea di, qword ptr [rcx]
sub dil, -111
and rdx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdx]
lea ax, qword ptr [rdx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
