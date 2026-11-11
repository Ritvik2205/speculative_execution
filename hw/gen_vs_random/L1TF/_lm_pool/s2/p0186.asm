.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 100
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 3
and rcx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rcx]
sbb al, cl
and bl, cl
test al, -32
and al, dil
xor dl, 9
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
