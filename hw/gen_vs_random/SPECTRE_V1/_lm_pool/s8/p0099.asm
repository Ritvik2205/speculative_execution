.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
xor al, -89
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
test dil, -116
or al, sil
and cl, -57
adc sil, -77
lea bx, qword ptr [rdx]
jmp .bb_0.1
.bb_0.1:
add bl, 70
lea ax, qword ptr [rcx + rsi + 34]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 8
js .bb_0.2
jmp .exit_0
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
