.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 25351
sub bl, cl
and rbx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rbx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
cmp al, 62
and rdx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
inc esi
not esi
and bx, -118
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
