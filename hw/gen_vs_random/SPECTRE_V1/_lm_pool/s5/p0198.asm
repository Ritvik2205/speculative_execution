.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], 32
test bl, -8
and rdi, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdi]
mov bl, dil
sbb al, 104
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], 12
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rbx]
sub cl, -47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
