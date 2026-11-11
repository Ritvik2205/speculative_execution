.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs si, dx
lea rsi, qword ptr [rdi + rdi]
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
test al, 15
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
sub cl, 86
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
test dl, cl
test dil, -126
sbb al, dl
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 7
sub bl, -96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
