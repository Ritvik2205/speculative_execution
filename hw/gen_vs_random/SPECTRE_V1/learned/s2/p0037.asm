.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rbx]
test bl, -8
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
or al, cl
xor dl, bl
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], -57
sbb al, -112
and rdx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rcx]
test cx, -17886
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
