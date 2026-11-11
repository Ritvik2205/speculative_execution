.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rcx, rcx
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], al
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
btc edi, 86
inc al
sbb cl, 105
lea rdi, qword ptr [rdx + rsi]
lea ax, qword ptr [rcx + rdx + 57]
jns .bb_0.2
jmp .exit_0
.bb_0.2:
add al, 18
and rdx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
