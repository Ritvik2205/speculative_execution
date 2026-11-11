.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 80 # instrumentation
sbb al, al
xchg ebx, ecx
lea ax, qword ptr [rdi]
sbb dil, al
jmp .bb_0.1
.bb_0.1:
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rax
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rsi]
jmp .bb_0.3
.bb_0.3:
lea rax, qword ptr [rsi + rbx]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
sub dl, 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
