.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and edx, 39
and rbx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rbx]
or ecx, edx
and rsi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rax], si
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
cmovnb ax, bx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rax]
cmovp di, ax
test cl, 94
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], ebx
and bx, si
and cl, 48 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
or si, 0b1000000000000000 # instrumentation
bsr bx, si
and rcx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], bx
and bl, -72 # instrumentation
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 55
and rcx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rcx]
not al
xor dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
