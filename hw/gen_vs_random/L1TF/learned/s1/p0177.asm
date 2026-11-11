.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
xor rax, -2072052278
and rdx, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdi]
sub bl, -96
jmp .bb_0.3
.bb_0.3:
cmovnp rsi, rax
jmp .bb_0.4
.bb_0.4:
test dil, -126
cmovs ax, si
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
