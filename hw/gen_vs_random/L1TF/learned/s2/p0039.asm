.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rdx]
or rax, -443578116
add al, -80
add cl, -36
cmp dx, 90
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -87
lea rdi, qword ptr [rax + rsi + 33]
test al, -84
add dl, 22
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
