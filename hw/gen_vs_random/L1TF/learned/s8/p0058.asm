.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and cl, 18
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and cl, 90
and rax, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rax]
sub rdi, 68
jmp .bb_0.1
.bb_0.1:
lea rdx, qword ptr [rsi + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
