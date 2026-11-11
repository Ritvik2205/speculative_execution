.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 6
and al, -17 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rax]
cmovnle ebx, eax
cmovno eax, edi
and rcx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -20
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 7
xor edi, 38
or sil, -8
or si, 0b1000000000000000 # instrumentation
bsf si, si
btr rdx, 194
or bl, cl
and di, 88
and sil, 65
xor edx, 100
bt eax, ebx
and bl, -55 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 3
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rsi], edi
or rbx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
