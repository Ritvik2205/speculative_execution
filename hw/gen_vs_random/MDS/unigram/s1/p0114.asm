.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc cx, ax
and dl, -7
cmovno ecx, eax
or rax, -2043376621
and rsi, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rbx]
or dl, al
and rax, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rax]
and bl, -13 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rcx]
and cl, 48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and sil, 65
bt rcx, rax
and sil, -49 # instrumentation
cmovno si, ax
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], 23
bt ecx, eax
or cl, 100
cmovnp rax, rdx
bt edx, edx
cmovnl rdi, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
