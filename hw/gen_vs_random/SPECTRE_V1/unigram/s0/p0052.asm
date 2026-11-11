.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, -38
and rsi, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -121
cmp edi, 81
inc dx
cmovnb rsi, rax
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 75
and rdx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdx]
inc al
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
sbb esi, edx
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rbx
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], eax
and rdx, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
