.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdx]
sbb al, -112
sub al, cl
test dil, -116
sub bx, 32
xor dl, al
adc ax, 24404
add cl, dl
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
adc al, -92
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
