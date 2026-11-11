.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 12 # instrumentation
cmovnb ecx, eax
sub cx, di
sbb bl, dl
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
test ax, 7679
adc al, bl
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
imul di, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
