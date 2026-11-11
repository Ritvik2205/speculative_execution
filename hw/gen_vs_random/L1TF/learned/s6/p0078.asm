.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rcx]
sbb al, cl
and rcx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rbx]
xor bl, -5
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rbx]
and dil, -22
and rdx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rdx]
or al, -2
lea esi, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
