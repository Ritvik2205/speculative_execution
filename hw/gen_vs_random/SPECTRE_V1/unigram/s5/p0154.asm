.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp cx, dx
cmovnle rdx, rbx
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], rcx
lea rcx, qword ptr [rax + rax + 33]
and rax, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rax]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
lea rdi, qword ptr [rdi]
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
cmovl ecx, edx
and rdi, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rdi]
inc dx
and rdx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rdx]
bswap rsi
xor ecx, ebx
add ecx, 62
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 53
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
