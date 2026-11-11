.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 12 # instrumentation
cmovnb edi, ebx
add dl, cl
sub dil, -32
sbb bl, cl
test cl, -33
test rsi, rdx
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dl
and dil, -93
add bl, cl
xor bl, -38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
