.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -103 # instrumentation
cmovbe bx, bx
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rbx]
sub al, -1
adc dil, bl
btc ax, bx
add al, -109
bts edi, 64
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -3
setz dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
