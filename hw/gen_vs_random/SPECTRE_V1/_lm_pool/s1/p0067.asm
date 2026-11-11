.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc bl
setnle al
lea rax, qword ptr [rcx + rdx + 87]
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub cl, dl
sbb bl, al
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rcx]
cmovs dx, bx
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
or al, 100
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
