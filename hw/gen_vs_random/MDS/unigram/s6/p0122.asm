.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], edi
cmovs di, bx
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], ax
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], 7
cmovb rbx, rbx
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
or ax, dx
and cl, -49 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rdx]
bt dx, 162
jmp .bb_0.1
.bb_0.1:
cmovo rdx, rcx
and cl, -75 # instrumentation
cmovp ecx, ecx
and si, si
xor sil, sil
btr rdx, 74
cmovnp rax, rcx
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], -103
and bl, 50 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdi]
and dl, 119 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rsi]
and sil, -56
xor dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
