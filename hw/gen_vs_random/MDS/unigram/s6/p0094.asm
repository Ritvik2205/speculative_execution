.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovns bx, cx
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rdi
cmovo rax, rax
and al, -3 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
bts rax, 77
cmovnbe edi, edx
and rcx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rcx]
or ebx, -104
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rdi
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rax]
and bl, 66 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
or dil, -78
and dl, 120 # instrumentation
cmovnz edx, ebx
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dil
and dl, -19 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
