.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx]
test al, -71
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, -127
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
lea ax, qword ptr [rcx + rbx]
sbb bl, dl
cmp ebx, -33
lea ax, qword ptr [rdx + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
