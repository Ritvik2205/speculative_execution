.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 48
setno cl
cmp dil, bl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sub al, sil
lea ax, qword ptr [rsi]
sbb bl, dl
test al, 34
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rdx]
inc eax
js .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
