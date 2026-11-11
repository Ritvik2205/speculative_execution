.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 99
cmovle edx, ebx
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], rax
cmovnle rax, rsi
and cl, -109 # instrumentation
cmovns rcx, rcx
cmovz rdx, rax
and rdx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 93
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rsi], dx
jmp .bb_0.1
.bb_0.1:
or cx, 0b1000000000000000 # instrumentation
bsf cx, cx
btr ebx, esi
and rsi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], ax
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 43
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
or bl, -98
and rdi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], cx
bts dx, ax
and rcx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rcx]
cmovbe ax, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
