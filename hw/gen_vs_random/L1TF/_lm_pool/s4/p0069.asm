.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs di, dx
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf edi, edx
test al, -82
or bl, -5
and rax, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
jp .bb_0.2
jmp .exit_0
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
cmovle rcx, rdi
and rax, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
