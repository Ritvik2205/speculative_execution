.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rax]
and al, -23 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rcx]
and al, 20 # instrumentation
cmovp di, si
and rdi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdi]
or ax, -7150
and bl, 49 # instrumentation
cmovbe rbx, rdx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 7
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, esi
xor cl, al
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], cx
and rcx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rcx]
bt rax, 39
cmovnle rax, rsi
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], bl
and dil, 34 # instrumentation
cmovno edi, eax
test esi, ebx
not rax
cmovs rdi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
