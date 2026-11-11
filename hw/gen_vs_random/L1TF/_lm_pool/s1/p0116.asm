.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 40 # instrumentation
btc rbx, rbx
lea ecx, qword ptr [rdi + rdi + 59]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dil
jmp .bb_0.2
.bb_0.2:
or al, -57
and rdx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdx]
and bl, bl
cmp dil, 84
bt eax, ecx
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rbx
lea rax, qword ptr [rdi]
sbb al, -14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
