.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, edi
add sil, -61
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rsi
sub dl, -78
lea dx, qword ptr [rcx + rsi + 49]
add cx, 97
and rbx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and bl, 15 # instrumentation
cmovb bx, di
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 73
cmp bl, 123
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
