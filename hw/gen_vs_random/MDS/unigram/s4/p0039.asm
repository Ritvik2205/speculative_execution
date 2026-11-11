.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, 106
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 100
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 16
and al, -64 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], 53
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 14
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], esi
and rax, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], edi
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
cmovs eax, ecx
cmovle cx, cx
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 54
and rcx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 1
cmovb rbx, rdx
cmovnl rax, rax
and bl, 44
btc ax, cx
bt rdi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
