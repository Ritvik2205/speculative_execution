.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, al
adc al, -6
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 22
jmp .bb_0.2
.bb_0.2:
add sil, -61
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -80
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 7
and rcx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
