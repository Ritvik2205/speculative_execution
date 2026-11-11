.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], rdi
and rax, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], 8
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], dx
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], esi
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 83
and rsi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rsi]
add cl, -83 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdx]
or dx, 0b1000000000000000 # instrumentation
bsf cx, dx
xor ax, cx
cmovle rcx, rax
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 59
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
