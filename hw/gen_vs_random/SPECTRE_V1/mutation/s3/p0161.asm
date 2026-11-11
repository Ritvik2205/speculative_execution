.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
and bl, dl
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rdi
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 913863268
sbb edx, -8
and rbx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rbx]
add al, 32 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], dl
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rbx]
test eax, 88788211
imul eax
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
sub eax, -911655926
xor cl, 71
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
