.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 23
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 10
setp al
add dl, 91 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and cl, 72
adc bl, 86
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 116
cmovz rax, rbx
lea rdi, qword ptr [rax + rdx]
and rcx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rcx]
add bl, 4 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], bx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], 46
cmp edi, 1
and rcx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rcx], 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
