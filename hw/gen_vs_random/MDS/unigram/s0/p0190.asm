.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, -21
test rbx, 82
and rsi, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rsi]
cmovo cx, cx
or edx, 64
and bx, ax
or sil, al
test al, al
and rbx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rax
or edx, 98
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], 55
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 16
bts esi, 52
btr rax, rax
and dx, 62
and rsi, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rsi]
cmovp edi, edi
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rbx], ax
and rsi, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
