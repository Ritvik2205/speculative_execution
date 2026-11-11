.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -98 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], si
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub al, bl
add rdx, 95
xchg rbx, rsi
jno .bb_0.2
jmp .bb_0.3
.bb_0.2:
add cl, -127
add bl, -95
cmp bl, -114
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
js .bb_0.3
jmp .bb_0.4
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
