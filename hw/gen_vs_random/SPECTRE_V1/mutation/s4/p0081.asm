.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 113
lea cx, qword ptr [rdx + rdi]
cmovnb rdi, rsi
cmp rsi, 53
sbb al, 118
cmovle dx, di
and rax, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rax]
sub dil, al
jns .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -61 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], -39
and rdx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], rax
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -28
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
