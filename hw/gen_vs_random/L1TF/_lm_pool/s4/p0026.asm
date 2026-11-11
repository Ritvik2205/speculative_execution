.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
test al, -104
sub cl, 86
test al, dil
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
and al, -68
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 7
jmp .bb_0.1
.bb_0.1:
bt edx, esi
xor bl, dl
test cl, 66
adc sil, 90
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
add al, 117
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
