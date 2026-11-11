.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 69
or rbx, 18
and rcx, 39
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 16
jmp .bb_0.1
.bb_0.1:
xchg rbx, rbx
and bl, 89
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
and eax, -409673666
and rsi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
