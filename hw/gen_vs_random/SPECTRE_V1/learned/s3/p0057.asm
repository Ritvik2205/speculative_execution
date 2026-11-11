.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 41
and rdx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdx]
cmp di, 31
add al, 10
jl .bb_0.3
jmp .bb_0.4
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdi]
sbb ebx, 34
sub dl, al
jnp .bb_0.4
jmp .exit_0
.bb_0.4:
cmp ax, 7452
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
