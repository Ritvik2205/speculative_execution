.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, 71
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub al, dil
jns .bb_0.2
jmp .exit_0
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rax]
test al, 48
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
lea rcx, qword ptr [rax]
sbb dil, -106
sub bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
