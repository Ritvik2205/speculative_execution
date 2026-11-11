.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edx, 189
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
xor bl, 67
test esi, 1857129931
test cl, 62
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
or cl, -36
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
or al, -58
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and al, 87
and bl, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
