.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rcx, rcx
and rsi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
or al, 19
and rcx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
lea rdx, qword ptr [rbx + rcx + 11]
sub rsi, 97
mov cl, al
and ax, 23118
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
