.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rsi]
add rdi, 26
and rbx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], 60
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rbx]
adc bl, -14
and al, -68
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
