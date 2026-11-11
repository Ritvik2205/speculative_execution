.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -32
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 49
lea rsi, qword ptr [rdi + rax + 59]
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
and rcx, 73
cmovle rdx, rbx
bt edx, edi
jmp .bb_0.1
.bb_0.1:
add cl, 65 # instrumentation
cmovo rcx, rax
sbb al, 61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
