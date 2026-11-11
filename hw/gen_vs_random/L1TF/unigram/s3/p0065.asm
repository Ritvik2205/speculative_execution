.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 110 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rax]
add bl, 15 # instrumentation
cmovb ebx, ebx
and rcx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rsi], cx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rdx]
add al, al
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 32
or al, -87
not esi
and rdx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rdx]
or rbx, 43
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
