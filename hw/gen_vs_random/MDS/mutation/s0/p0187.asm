.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], cx
cmovl eax, esi
and cl, -35 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rdi]
or dil, -76
and rcx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rcx]
bts ecx, 184
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 5
cmovb rax, rcx
and rax, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], edx
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edi
test rax, -2004802425
xor ax, si
cmovp ax, dx
or cl, al
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -884248205
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], cx
and cl, -23 # instrumentation
cmovno edi, edx
xor cl, sil
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 2
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
