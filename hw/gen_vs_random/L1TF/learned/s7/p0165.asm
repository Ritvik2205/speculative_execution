.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rdx]
mul rcx
xor rdi, -80
or dl, dil
and rcx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
cmp cx, 46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
