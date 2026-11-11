.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], bx
sub dl, bl
sub cl, sil
lea rdi, qword ptr [rdx]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
jle .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, dil
test dil, -116
and ax, 2806
bswap rsi
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
