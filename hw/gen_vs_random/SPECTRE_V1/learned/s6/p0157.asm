.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rbx, rbx
sub al, dil
inc rsi
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], 9
sub dil, -32
add dl, sil
and dil, -93
sbb dl, 127
add dil, bl
xchg cl, sil
sub cl, -21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
