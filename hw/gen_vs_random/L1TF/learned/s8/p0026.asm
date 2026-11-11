.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, ecx
lea cx, qword ptr [rax]
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
or rax, 699028911
or al, -48
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 112
test cl, 31
jmp .bb_0.2
.bb_0.2:
lea rdi, qword ptr [rdx + rbx]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
