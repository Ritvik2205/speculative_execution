.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rbx]
sub cl, bl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
test cl, -62
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 95
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 29
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], dl
sub al, -1
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
mov dx, 72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
