.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 103 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rbx]
adc ax, ax
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], 75
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea dx, qword ptr [rax + rdi]
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
and rcx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rcx]
setnl dil
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rax
sbb dil, cl
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rax
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 95
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
