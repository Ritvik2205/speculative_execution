.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ecx, si
and rcx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rcx]
xor sil, bl
jmp .bb_0.1
.bb_0.1:
lea di, qword ptr [rdx + rdi + 1]
add dil, al
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rbx]
xor rbx, rsi
and bl, bl
and sil, 93
test al, -70
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
sub cl, -49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
