.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 12 # instrumentation
cmovnb esi, eax
test dil, -116
sbb dl, cl
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], al
sub al, cl
add dil, dl
and rsi, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rsi]
lea ax, qword ptr [rsi + rdx]
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
