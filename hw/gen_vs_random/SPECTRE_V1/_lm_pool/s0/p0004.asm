.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 94
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and dl, -92
jnp .bb_0.3
jmp .exit_0
.bb_0.3:
lea bx, qword ptr [rdx]
lea rsi, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
