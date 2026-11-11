.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -43
sub al, cl
setb sil
and rsi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rsi]
setnb cl
or bl, cl
lea si, qword ptr [rdx]
cmp ax, -11439
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
and dl, bl
add eax, 1938514106
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
