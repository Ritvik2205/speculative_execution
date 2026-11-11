.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 86 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
test bl, -8
sbb eax, 125
sub al, -82
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnz .bb_0.2
jmp .bb_0.3
.bb_0.2:
lea rdi, qword ptr [rcx + rdx + 23]
and dil, sil
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 2
and rdi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdi]
jnp .bb_0.3
jmp .exit_0
.bb_0.3:
test dl, 113
and rsi, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
