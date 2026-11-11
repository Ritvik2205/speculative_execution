.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 3
or sil, -8
and dl, -73 # instrumentation
cmovns rdx, rax
xor dil, dil
and ax, cx
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], sil
and rbx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rbx]
cmovnle ebx, edi
btr rax, 73
cmovnle rax, rdi
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
and al, -56 # instrumentation
cmovl rbx, rdx
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 5
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 79
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rcx], di
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -69
and rsi, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rsi]
and dl, 91 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
