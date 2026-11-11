.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], dx
lea rax, qword ptr [rbx]
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
sbb dl, dil
test sil, 97
sub dil, al
and rdx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdx], 8
lea cx, qword ptr [rdi + rsi + 82]
and cl, bl
and al, 33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
