.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 107 # instrumentation
cmovs eax, esi
or rsi, 95
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edi
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, ebx
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], dx
or rdx, 97
xor ecx, ecx
and rdx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rsi], 45
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 60
and rdx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 74
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
btc rax, rsi
and dl, 113 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdi]
bt rax, rcx
and bl, -13 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
