.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], edi
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edi
and rcx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rcx
bt ecx, ebx
and rsi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rbx
or dl, sil
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
and cl, -53 # instrumentation
cmovbe eax, ecx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdi]
and dl, 116 # instrumentation
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
cmovnle bx, dx
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 3
and rax, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rax]
or bl, dil
test bx, 25542
cmovns rdx, rdx
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
