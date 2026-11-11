.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], cx
btr di, 89
btc ebx, 149
btc esi, esi
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
cmovl dx, di
and rax, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rax]
bt ax, bx
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], -59
or cx, 0b1000000000000000 # instrumentation
bsr bx, cx
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
and sil, 8 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rcx]
and bl, -62 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], ebx
and rsi, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rsi]
cmovnbe cx, dx
cmovnbe rsi, rbx
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], al
and rax, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
