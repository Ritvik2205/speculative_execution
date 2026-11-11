.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr ecx, 50
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 6
test cl, dil
and rdx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rdx]
or di, 0b1000000000000000 # instrumentation
bsr dx, di
xor al, cl
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
and rcx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rcx]
or ecx, 2
cmovnb cx, dx
not rdi
and rdi, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 5
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
bt rax, rsi
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edi
cmovbe ecx, ecx
and rdi, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
or ecx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
