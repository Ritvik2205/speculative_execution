.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 86 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rdi]
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
sbb al, 118
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], dx
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], ax
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
js .bb_0.3
jmp .exit_0
.bb_0.3:
inc esi
adc al, -92
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 913863268
lea rbx, qword ptr [rcx]
sbb rdx, -34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
