.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rcx]
xchg ebx, edi
test dil, -126
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
jp .bb_0.3
jmp .bb_0.4
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
xor al, dil
and rsi, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rsi]
jmp .bb_0.5
.bb_0.5:
and eax, -409673666
jmp .bb_0.6
.bb_0.6:
or al, bl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
add sil, -61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
