.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, bl
cmovno edx, ecx
or al, bl
movsx dx, dil
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
or al, bl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
sub cl, sil
sub al, cl
adc cl, 31
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
xor di, 52
and bl, -60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
