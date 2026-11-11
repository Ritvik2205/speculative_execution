.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec cx
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
sub cl, dl
xchg esi, ecx
add cl, dl
and rsi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rsi]
adc dl, 107
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
