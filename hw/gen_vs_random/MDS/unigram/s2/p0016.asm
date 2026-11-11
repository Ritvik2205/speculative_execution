.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdx]
cmovo dx, di
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 16
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], si
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rax], cx
or rcx, rdx
and dl, 113 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 4
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rcx
test sil, 99
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 21
and rcx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
cmovb rdx, rbx
bts rbx, 46
cmovnp ebx, eax
and rsi, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
