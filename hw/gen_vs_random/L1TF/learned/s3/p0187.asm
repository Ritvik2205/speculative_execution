.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 12
xor rsi, 6
xor eax, 965442135
sub rax, 57846954
cwde
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dil
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
xor esi, 77
jmp .bb_0.2
.bb_0.2:
sbb bl, dil
test dil, -126
xor dx, 8
test si, 17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
