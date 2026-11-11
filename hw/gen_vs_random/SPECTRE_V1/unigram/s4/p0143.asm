.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], dx
lea rdi, qword ptr [rdx + rbx + 14]
and rbx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rbx]
adc ecx, edx
and rdi, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rcx]
inc bx
and rbx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rbx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 103 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rsi
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 16
and rcx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rcx]
mov rdi, 8
or rdx, 92
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -121
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
