.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rsi, rcx
bts edi, 248
and rcx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rcx]
and ax, bx
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
and si, -121
and rdx, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
and rax, -731384280
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 62
cmovno esi, ecx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
test al, 91
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ecx
cmovnbe di, cx
and dl, 4 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -48
and dl, -1 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
