.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, 0b1000000000000000 # instrumentation
bsr di, di
and rdx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], -22
cmovno di, cx
cmovnz edx, ecx
and rsi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rsi]
cmovo edi, edx
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 5
test cl, -113
and rsi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
test rcx, -613256812
cmovl edx, esi
cmovnp di, ax
and rsi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rsi]
and ebx, ebx
btr esi, ecx
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 7
xor cl, 24
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
