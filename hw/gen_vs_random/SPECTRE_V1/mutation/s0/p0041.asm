.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 32 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 913863268
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rdi
sbb edx, 105
and bl, dl
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], dl
and rbx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rbx]
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
xor cl, -91
sub eax, -911655926
and rdx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdx]
imul eax
test eax, 88788211
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 126
and rbx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], -34
test ax, dx
and rcx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rcx]
xchg ebx, edx
lea ebx, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
