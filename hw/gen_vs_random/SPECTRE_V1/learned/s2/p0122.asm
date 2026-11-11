.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rax + rdi + 64855]
and rcx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rcx]
imul bl
add dl, -42 # instrumentation
lea edi, qword ptr [rdx]
lea rcx, qword ptr [rdx]
cmovnbe rbx, rsi
xor rsi, -124
not bx
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
xor dl, dl
mov cl, cl
and rsi, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], -106
and rdi, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rdi]
xor rsi, 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
