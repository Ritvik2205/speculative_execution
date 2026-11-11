.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs cx, si
cmp dil, al
xor dil, -42
and rbx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
cbw
and rsi, 18
jmp .bb_0.2
.bb_0.2:
xor al, 38
lea bx, qword ptr [rax + rcx]
and rsi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
