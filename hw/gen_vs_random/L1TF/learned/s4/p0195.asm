.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rcx]
test rsi, rcx
or al, dil
bt rcx, rdi
cmovb cx, si
add ebx, 2
cmp cl, -89
or edx, 96
sbb eax, -1165635662
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 35
or ax, -18131
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
