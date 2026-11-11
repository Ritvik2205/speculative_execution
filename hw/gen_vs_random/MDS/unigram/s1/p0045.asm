.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle rcx, rsi
and rdx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rdx]
or dil, cl
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rax
and dl, -53 # instrumentation
cmovbe esi, edx
and rbx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
not al
test dl, dl
cmovp bx, dx
jmp .bb_0.1
.bb_0.1:
and si, -121
bts rax, rsi
or edx, edi
cmovnp rax, rcx
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdx]
cmovnle esi, ebx
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
cmovns cx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
