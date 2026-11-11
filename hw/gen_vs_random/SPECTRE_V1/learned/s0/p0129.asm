.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
test cl, -120
xor eax, -105
bt edi, ebx
cmp ecx, 6
and rax, -175411684
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
