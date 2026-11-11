.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl rcx, rcx
and al, al
and dil, -58 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
xor cl, cl
xor sil, 110
cmovnbe edx, edi
and rsi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], -62
and rsi, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rcx
and ax, 31082
and eax, -574348013
and dl, 81 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rax]
btr eax, 51
and bl, 68
or eax, -1777347252
btc dx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
