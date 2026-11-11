.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov cl, bl
test al, -56
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
sbb al, bl
sbb al, cl
and rdi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdi]
adc cl, -34
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dil
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 15
sbb eax, -1165635662
and rsi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
sub cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
