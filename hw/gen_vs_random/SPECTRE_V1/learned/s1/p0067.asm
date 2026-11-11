.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -13240
dec cl
and rdx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
test rax, -1638758413
and ax, -13240
sub al, -66
and ax, -13240
sbb bl, 79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
