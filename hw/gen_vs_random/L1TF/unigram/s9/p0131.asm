.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rbx]
cmovnp rax, rdx
test rcx, 39
imul rcx
or rax, -443578116
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rbx
jmp .bb_0.1
.bb_0.1:
sbb al, cl
or esi, 95
cmovno bx, bx
adc bx, ax
lea ecx, qword ptr [rdx + rcx + 33]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
and rbx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
