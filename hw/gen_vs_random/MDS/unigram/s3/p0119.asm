.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rdi]
btc ax, ax
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
or bl, al
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
and rdi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rbx
and rsi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rdi]
and dl, -75 # instrumentation
cmovp edx, edx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
and rdx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rdx]
and cl, 7 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rax]
and ax, 13090
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rax], edi
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rax], si
and rax, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rax]
cmovo edi, ecx
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], -114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
