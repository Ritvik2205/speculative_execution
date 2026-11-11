.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
sbb dl, 127
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 58
sbb dl, sil
sub cl, -21
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], dl
sbb bl, dl
jle .bb_0.1
jmp .exit_0
.bb_0.1:
sub cl, -47
test sil, -31
add sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
