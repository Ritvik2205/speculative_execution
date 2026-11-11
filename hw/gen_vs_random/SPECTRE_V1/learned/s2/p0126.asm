.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 87 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
adc sil, -18
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rdx]
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
xor cl, -103
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
add cl, -83 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdx]
cmovle rax, rbx
or rsi, 90
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, esi
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rdx]
jp .bb_0.3
jmp .exit_0
.bb_0.3:
movsx rsi, al
or bx, 0b1000000000000000 # instrumentation
bsf si, bx
xor rax, -2035087432
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
