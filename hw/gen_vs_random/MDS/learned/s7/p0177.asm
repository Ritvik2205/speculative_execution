.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], ecx
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
bts rdx, 200
test dl, 27
or al, 54
and bl, bl
or al, -75
test rax, 1978892575
jmp .bb_0.1
.bb_0.1:
or al, -61
bts si, di
test cl, cl
xor dl, al
test dil, al
jmp .bb_0.2
.bb_0.2:
or rax, 302048971
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
