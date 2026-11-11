.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 8 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rcx]
and al, 84
and rsi, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
and dil, -103 # instrumentation
cmovns edi, edi
and al, -58 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
test rbx, 11
cmovo ecx, edi
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 122
or ecx, esi
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
cmovbe ax, bx
cmovo dx, dx
and rbx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rbx]
cmovnbe esi, esi
and rdi, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rdi]
xor sil, -15
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
cmovnb edx, ebx
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
