.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
and dil, al
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 85
cmovnb bx, bx
and bl, 52 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rcx
and rdi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rdi], si
or al, sil
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 116
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 13
and rsi, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rsi]
and al, -64 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and dl, -7
and rdx, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rdx]
cmovs ebx, esi
and rsi, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 78
and dil, 30
and al, 122 # instrumentation
cmovnbe eax, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
