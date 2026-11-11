.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rsi]
sub al, bl
xor bx, 59
xor dl, cl
seto sil
jmp .bb_0.1
.bb_0.1:
or al, bl
and dil, dil
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
btc ax, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
