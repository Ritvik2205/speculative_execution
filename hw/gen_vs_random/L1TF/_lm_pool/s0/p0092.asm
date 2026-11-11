.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, al
xor sil, 64
lea rsi, qword ptr [rdi + rdx]
and rcx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rcx], 71
jmp .bb_0.1
.bb_0.1:
add bl, 89 # instrumentation
sbb al, bl
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
cmovbe eax, ebx
sbb dil, 7
sub bl, 15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
