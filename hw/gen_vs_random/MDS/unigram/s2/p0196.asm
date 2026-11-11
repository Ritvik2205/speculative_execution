.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, -15
xor dil, 124
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rax
cmovnp ax, ax
and rdi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rcx
and bl, 68
jmp .bb_0.1
.bb_0.1:
or rdi, 21
cmovnle cx, bx
cmovnbe rax, rbx
and rcx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], eax
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], ecx
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 78
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 7
and rax, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], bx
and rdx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rdx]
or esi, -110
and rsi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rsi]
and bx, 96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
