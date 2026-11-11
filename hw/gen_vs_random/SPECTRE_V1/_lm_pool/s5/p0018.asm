.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
cmp rax, 1189904463
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
xchg sil, bl
xchg al, bl
js .bb_0.1
jmp .exit_0
.bb_0.1:
and al, -23
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dil
lea rbx, qword ptr [rsi + rcx]
and cl, -57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
