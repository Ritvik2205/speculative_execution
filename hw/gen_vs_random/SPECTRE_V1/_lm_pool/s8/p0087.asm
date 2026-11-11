.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dl
test dil, -116
and rsi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rsi]
and bl, 87
sub al, 63
xor sil, -33
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
add ebx, -116
and al, dl
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 59
xor cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
