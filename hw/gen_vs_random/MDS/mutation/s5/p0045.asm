.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl eax, esi
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], cx
bts ecx, 3
or dil, -41
and cl, -35 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
or cl, al
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], dx
xor cl, sil
xor ax, si
and cl, -23 # instrumentation
cmovno edi, edx
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edi
cmovp ax, dx
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1939205136
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 2
and rax, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], edx
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], cx
test rax, -359674714
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 5
cmovb rax, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
