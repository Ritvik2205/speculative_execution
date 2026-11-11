.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 83
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], si
and dil, -99 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
bt si, 23
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
and eax, -829294476
xor al, 99
and cx, -8
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], 33
and rbx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rax
cmovz rax, rax
cmovnbe dx, cx
bts dx, 50
cmovz dx, bx
test sil, -96
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 58
test eax, 424329527
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
