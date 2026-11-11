.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rax]
and cl, 49 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rbx]
cmovnz si, si
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rax], si
cmovnz ecx, esi
and rdx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rax]
xor dx, ax
and rbx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], edi
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
cmovle rbx, rcx
btc edi, ebx
or eax, eax
or bl, cl
and dil, dil
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], esi
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 119
cmovs eax, ebx
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
