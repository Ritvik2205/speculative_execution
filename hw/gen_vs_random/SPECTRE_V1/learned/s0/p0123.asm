.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, -103 # instrumentation
cmovbe di, di
sbb al, -114
and ax, 21910
sub cl, sil
and rdx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
lea edi, qword ptr [rax]
inc ebx
sub al, cl
and rdi, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdi]
lea rsi, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
