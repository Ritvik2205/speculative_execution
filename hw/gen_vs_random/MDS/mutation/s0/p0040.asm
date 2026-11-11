.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdi, 6
bts rax, 149
and bl, -13 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 5
and dl, cl
or eax, -1642752131
cmovo dx, si
jmp .bb_0.1
.bb_0.1:
bt ax, dx
and dl, -73 # instrumentation
cmovns rbx, rcx
or ecx, esi
or ax, -17790
and rax, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rax]
or dil, -52
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dil
and rax, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], 119
and rbx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rbx]
cmovno dx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
