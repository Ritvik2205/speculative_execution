.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
or bl, 13
btr rdi, 129
btc rsi, rdx
and rcx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rcx]
cmovb si, ax
and rax, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rax]
and sil, 43 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], cx
and ax, -10351
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf eax, eax
cmovnle rdx, rax
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rbx
and rbx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rbx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and rbx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], di
and rax, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rax]
bts rdi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
