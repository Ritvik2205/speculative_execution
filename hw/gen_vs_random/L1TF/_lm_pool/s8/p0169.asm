.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 86 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rsi], 83
jmp .bb_0.1
.bb_0.1:
lea rax, qword ptr [rsi + rbx]
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
xor si, -50
cmovnp di, ax
xor dil, al
and al, -68
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -380598914
cmovb ax, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
