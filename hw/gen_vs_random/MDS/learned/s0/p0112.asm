.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, 51
xor al, cl
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
and edx, -44
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
test eax, -1634766116
jmp .bb_0.1
.bb_0.1:
not bl
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
