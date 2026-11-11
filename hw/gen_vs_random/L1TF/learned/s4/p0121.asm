.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, ebx
setno sil
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
xor eax, -603819833
jmp .bb_0.2
.bb_0.2:
add bl, 68
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], sil
lea cx, qword ptr [rdi + rdx + 83]
cmp sil, -11
and ax, 37
sbb al, sil
cmp ax, -31327
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
