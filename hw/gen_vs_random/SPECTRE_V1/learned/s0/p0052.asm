.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
adc al, -82
dec bl
xchg edi, ecx
add cl, bl
adc bl, dil
adc di, 86
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
