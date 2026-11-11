.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rbx, rdx
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
and cl, 125 # instrumentation
cmovo dx, si
xor al, bl
and rbx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
and rdi, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 5
and sil, 50 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rbx]
or dil, cl
xor esi, 76
and cl, -111
and dil, -116 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rcx]
btc rdx, rdx
and rax, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rax]
bts ax, si
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], edi
or sil, al
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
