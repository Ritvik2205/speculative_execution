.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 86 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rax]
adc sil, -77
add al, -117 # instrumentation
not rdx
lea cx, qword ptr [rcx + rbx]
cmovno dx, dx
or rbx, 22
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
sbb al, 33
sub dil, cl
dec rbx
bt cx, 44
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 7
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], si
xor cl, al
and rsi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rsi], 46
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 53
lea edx, qword ptr [rdi + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
