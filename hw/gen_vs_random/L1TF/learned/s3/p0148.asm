.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rax]
and bl, cl
bts bx, 223
btr ax, cx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
and rdx, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
