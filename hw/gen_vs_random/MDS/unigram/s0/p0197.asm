.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], cl
or esi, eax
and rbx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rbx]
and sil, al
and dil, -67 # instrumentation
cmovnle rdx, rdi
and rcx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], bx
and rdx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rdx]
or al, al
and rbx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], si
and rbx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
or rbx, rsi
and rsi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], ebx
and bl, -89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
and bl, -5 # instrumentation
cmovnl di, cx
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 51
and rax, -636362975
and dl, 125 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rdi]
test al, sil
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
