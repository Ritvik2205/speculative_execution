.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 23
setno al
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
sub sil, -99
and cl, sil
sub cl, -49
jmp .bb_0.1
.bb_0.1:
add dl, -52 # instrumentation
adc cx, 12
and bl, cl
and sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
