.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 3
and sil, 34 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rsi]
test sil, -96
and si, -121
and dl, -5 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rcx]
cmovns dx, di
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rsi]
or eax, esi
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], eax
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
and dil, sil
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rdi, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 23
cmovnz esi, esi
and cl, -127 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rcx]
btr si, 52
and rsi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rsi]
or ax, -20176
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
