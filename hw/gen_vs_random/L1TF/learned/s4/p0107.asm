.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 88
and rax, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rsi]
test al, -104
and bl, 89
sub dil, dl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
cmp al, 56
sub di, si
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
