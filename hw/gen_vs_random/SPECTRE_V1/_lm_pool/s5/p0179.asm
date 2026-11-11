.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, cl
sbb ecx, 64
lea rdx, qword ptr [rdi + rbx + 99]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], dx
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], bl
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
lea ax, qword ptr [rdx]
setb cl
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
add al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
