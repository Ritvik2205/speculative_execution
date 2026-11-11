.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], ecx
and bl, -74 # instrumentation
cmovns eax, ebx
btr rsi, 207
and rbx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
jmp .bb_0.1
.bb_0.1:
and bl, 68
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 56
and dl, 16 # instrumentation
cmovle edi, edi
xor rbx, rax
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 8
or cl, dl
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], -103
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rdx], di
cmovs ax, cx
and cl, 89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rbx]
bts bx, ax
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], bx
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], cx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
