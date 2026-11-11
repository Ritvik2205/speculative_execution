.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
lea eax, qword ptr [rsi + rsi + 43]
cmp bx, 90
xor al, 45
test dil, -126
xchg sil, cl
and dl, 59
and dil, -82
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], bl
js .bb_0.1
jmp .exit_0
.bb_0.1:
xor dx, 60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
