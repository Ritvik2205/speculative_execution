.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
xor dl, bl
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
test cl, 75
jmp .bb_0.3
.bb_0.3:
test rcx, rdi
jmp .bb_0.4
.bb_0.4:
test al, -32
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
adc eax, 457059541
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
