.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], al
xor dil, -37
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dil
sub bl, -6
cmp cl, 19
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
or rdi, 68
mov bl, sil
or cx, 0b1000000000000000 # instrumentation
bsf ax, cx
lea rcx, qword ptr [rdi + rdx + 23]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
