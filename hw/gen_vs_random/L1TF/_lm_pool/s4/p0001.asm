.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs di, bx
xor cl, dil
sbb ebx, 9
and rbx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rbx]
or dil, -113
jmp .bb_0.1
.bb_0.1:
cbw
and eax, -409673666
sub rax, 1715032616
jmp .bb_0.2
.bb_0.2:
test dil, -126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
