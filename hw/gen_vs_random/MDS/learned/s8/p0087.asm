.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], edi
or dil, cl
or cl, al
xor dil, -124
cmovle cx, bx
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
test dil, -51
test ecx, -1843375753
and al, 87
xor ax, -23364
test ecx, -1843375753
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
and esi, 23
and rax, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
