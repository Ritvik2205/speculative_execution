.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -5 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdi]
lea rbx, qword ptr [rdi + rsi]
and rcx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rdx
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 4
and rcx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rcx]
cmovno dx, dx
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
lea edi, qword ptr [rdx + rdx + 25]
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 72 # instrumentation
cmovnl ax, bx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], di
and rdi, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdi]
add si, bx
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rbx]
cmovl rcx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
