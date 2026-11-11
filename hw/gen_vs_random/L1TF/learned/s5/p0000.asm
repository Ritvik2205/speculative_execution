.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs si, ax
test dl, -37
btc si, dx
xor cl, sil
xchg ebx, edi
jmp .bb_0.1
.bb_0.1:
lea bx, qword ptr [rbx]
test sil, 29
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
