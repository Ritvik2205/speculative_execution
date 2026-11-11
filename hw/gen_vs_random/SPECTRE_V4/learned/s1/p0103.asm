.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rcx]
add dl, -82
adc dil, al
sub rbx, 101
sub bl, al
cmp si, 109
sub al, 0
sbb al, -43
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
or cl, cl
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
xor cl, 88
cmp rsi, 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
