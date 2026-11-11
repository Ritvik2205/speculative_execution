.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx eax, cx
add rax, 6
and rsi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rsi]
bt eax, 78
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dil
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 27
test cl, -120
test al, -126
and bl, dl
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -121
and rdx, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rdx]
cmp sil, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
