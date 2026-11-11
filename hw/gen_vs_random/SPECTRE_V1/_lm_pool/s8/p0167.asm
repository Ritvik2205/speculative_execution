.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, bl
lea rbx, qword ptr [rdi]
lea rdx, qword ptr [rcx + rsi]
btc di, si
add al, al
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rax]
lea ax, qword ptr [rsi + rdx]
sbb al, 118
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
sbb al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
