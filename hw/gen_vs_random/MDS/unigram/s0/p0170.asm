.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rdi, 2
and rdx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rdx]
and dl, 60 # instrumentation
cmovno ebx, ebx
bt eax, edi
and rdx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdx]
or rsi, 56
cmovns esi, edi
and ax, dx
test ebx, 245771113
and al, -56 # instrumentation
cmovl rsi, rcx
test rsi, 879594088
btc rax, rdi
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 52
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], -109
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 98
cmovnle rax, rcx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 95
btc rcx, rbx
bts edx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
