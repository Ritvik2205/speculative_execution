.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edi
adc dil, 38
cmp rax, -1070057082
and rdx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdx]
sub cl, bl
sbb al, 95
adc bl, 79
mov ax, 31802
btc edx, 165
adc dil, al
or cl, 83
test rbx, 1219566903
xor dil, 117
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
