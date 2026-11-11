.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rcx
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 5
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 52
cmovns rdi, rcx
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
test rdx, 33
and rdx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], ecx
or dl, cl
and cl, 6 # instrumentation
and rcx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], eax
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rdx
xor sil, -46
cmovbe rbx, rbx
and dl, 4 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rax]
test rsi, rdx
xor dl, -43
and rsi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rsi]
xor rcx, 71
and rcx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
