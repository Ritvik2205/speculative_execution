.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 27
or rsi, 37
or sil, -44
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rbx]
and rbx, rax
xor cl, 89
lea si, qword ptr [rdx + rsi + 21492]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rbx]
xor dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
