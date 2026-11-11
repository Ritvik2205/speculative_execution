.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], 78
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], cx
bts eax, esi
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 56
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 91
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 1
xor ebx, ebx
xor ax, dx
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 64
or edx, 21
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], bx
and sil, -115 # instrumentation
cmovl di, si
and bl, 52 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rbx]
test al, al
cmovle ebx, eax
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 0
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
or rdx, 96
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
