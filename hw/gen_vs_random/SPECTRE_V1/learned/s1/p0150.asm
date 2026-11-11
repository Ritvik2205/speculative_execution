.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rax]
xor al, bl
or dil, 98
and rbx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rbx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
adc cl, -19
and al, cl
adc al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
