.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rsi]
btr rdi, 60
cmovns di, dx
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], bx
or ax, -17790
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 6
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 16
and cl, dl
xor dil, 88
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], bx
cmovnz edx, edi
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rax
jmp .bb_0.1
.bb_0.1:
or ax, 6575
not bl
test rax, 1732677821
and dl, 60 # instrumentation
cmovno eax, eax
cmovnle edx, ebx
xor esi, 29
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
