.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
or cl, -77
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rsi]
or al, -58
or rax, 302048971
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
or al, -61
and cl, -71
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], -102
and bl, bl
xor sil, bl
and cl, 79
and al, -55
test dl, sil
test rcx, -613256812
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
