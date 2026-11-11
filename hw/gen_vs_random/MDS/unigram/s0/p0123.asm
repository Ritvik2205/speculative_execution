.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp edi, edi
and di, 1
cmovb ax, dx
and dl, 124 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 11
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 56
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 37
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 8
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 5
jmp .bb_0.1
.bb_0.1:
and dl, -1 # instrumentation
cmovnb di, dx
or di, -18
and rsi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], ecx
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 4
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edi, eax
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 68
and dl, 84 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rdi]
cmovp eax, eax
cmovs eax, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
