.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rdx]
xor cl, -103
adc dl, cl
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
adc dl, 50
and rsi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rsi]
xor dil, 77
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 16
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
imul dil
mul rdi
or dl, sil
cwde
btc rdi, 96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
