.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec bx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 6
and rsi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rsi]
inc cl
sub bl, -96
jmp .bb_0.1
.bb_0.1:
or bl, cl
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
