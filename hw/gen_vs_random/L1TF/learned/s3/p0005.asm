.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 86 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdx]
test dl, cl
sub sil, -99
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
sub al, 26
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
and dil, al
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 81
cmp cx, 40
xchg al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
