.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdi, 221
btc rdx, 43
and rdx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdx]
cmovns eax, edx
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
btc ax, si
and rcx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ecx
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rsi
and rsi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rbx
and bl, 108 # instrumentation
cmovns rbx, rbx
or dil, cl
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 71
and rdx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rdx]
and cl, dl
or dil, dil
bt rsi, 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
