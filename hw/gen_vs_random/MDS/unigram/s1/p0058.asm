.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rax]
or rcx, 54
not bl
and rcx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rcx]
and dl, al
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 17
and rdx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rax]
or rax, 1020005579
bts rax, 77
cmovo dx, bx
and rsi, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rsi]
xor dil, sil
cmovno rdx, rcx
xor dl, dil
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 41
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], ebx
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
