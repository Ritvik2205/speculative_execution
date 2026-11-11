.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -122 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
xor rdi, -80
test dl, al
cmp rbx, 24
lea rdx, qword ptr [rdx + rsi]
jmp .bb_0.1
.bb_0.1:
cmp ax, -31327
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], -25
and dil, dil
or edx, 21
sub al, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
