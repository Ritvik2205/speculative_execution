.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rcx]
xor edi, 16
xor bl, cl
sub cl, 86
jmp .bb_0.1
.bb_0.1:
xor al, cl
lea rdi, qword ptr [rcx + rsi + 13]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
