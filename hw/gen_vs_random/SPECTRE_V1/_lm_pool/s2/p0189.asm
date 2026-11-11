.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -8
test dl, 113
and rcx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rcx]
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb eax, 125
jnz .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], -57
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
jmp .bb_0.3
.bb_0.3:
cmp bl, al
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
