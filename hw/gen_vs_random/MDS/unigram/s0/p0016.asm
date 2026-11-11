.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb rsi, rdx
and rdx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rdx]
or rax, 1020005579
and rax, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rax]
and cx, -2
cmovnp cx, bx
cmovl rdi, rsi
and dx, 3
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
btr si, bx
or bl, al
xor cl, sil
xor ecx, 8
jmp .bb_0.1
.bb_0.1:
cmovl rax, rcx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 56
cmovns rcx, rdx
xor rbx, 89
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], ax
and al, 17 # instrumentation
cmovnp eax, esi
and rcx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
