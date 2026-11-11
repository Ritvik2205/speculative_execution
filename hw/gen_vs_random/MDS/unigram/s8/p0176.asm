.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 6 # instrumentation
and rbx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], edx
and bl, -99 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rcx]
or dl, sil
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
and cl, 38 # instrumentation
cmovbe edi, ecx
bt rdx, 73
cmovp di, ax
and bl, -5 # instrumentation
cmovnl si, cx
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rax
btr di, si
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rax
test ebx, -961564216
or rsi, 62
cmovnl ecx, ecx
cmovns rdi, rcx
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 74
and dx, si
test sil, -55
and rdi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
