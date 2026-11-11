.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 61
and rdi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdi]
xor cl, 89
xor bl, 38
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 8
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdx], 53
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
