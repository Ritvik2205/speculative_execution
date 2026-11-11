.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 23118
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 43
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jb .bb_0.2
jmp .exit_0
.bb_0.2:
cmp sil, 25
sbb bl, bl
mov al, dil
sbb al, bl
add eax, 1938514106
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
