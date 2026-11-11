.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rcx]
dec dil
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 96
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], ecx
setle dl
and dl, cl
sbb rsi, 29
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], cl
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 98
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rsi
cmp dl, cl
jmp .bb_0.1
.bb_0.1:
and eax, 1167476476
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -68
cmovz esi, eax
and rdi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
