.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rsi], si
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
and rsi, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 43
or dil, dil
and rcx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdx]
cmovnp esi, edi
and rax, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rdi], cx
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
or dl, 51
and rdi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
and rcx, rcx
cmovbe ax, bx
and al, -10 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
btr ax, bx
and dl, -40 # instrumentation
cmovp edx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
