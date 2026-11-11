.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rdi]
test dil, -126
sbb al, cl
lea rsi, qword ptr [rbx + rax]
and rdx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], bl
btr si, cx
lea rdx, qword ptr [rcx + rdx + 33]
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
