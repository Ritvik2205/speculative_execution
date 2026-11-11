.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul dil
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rbx
and rsi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], dx
and rax, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rdx]
bt rbx, rax
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, eax
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], bl
imul bl
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
xor cx, 98
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
sbb cx, 74
add dl, dil
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], cl
lea cx, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
