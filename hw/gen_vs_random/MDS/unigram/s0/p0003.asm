.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
and cl, -111
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
cmovs edx, esi
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], esi
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dl
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rcx]
and cl, 51 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and al, 66 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rsi]
and rbx, 65
and bl, 26 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rax]
or rsi, 27
and rdi, rsi
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
btc rsi, 105
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
cmovnbe ebx, edx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
