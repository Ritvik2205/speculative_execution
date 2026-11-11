.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rsi]
xor al, 38
xor dil, -42
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 62
and rax, 1163013815
jmp .bb_0.2
.bb_0.2:
add cl, 65 # instrumentation
cmovo rcx, rdx
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dl
add dil, cl
bt di, ax
and rax, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
