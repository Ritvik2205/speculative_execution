.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 7
btc rcx, 4
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 6
cmovo ax, di
btr rcx, 16
test bl, al
cmovz dx, si
and rbx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], edi
btc cx, 104
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rsi
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rax]
bt bx, si
cmovs edi, edi
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 83
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 61
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 5
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 6
cmovnb cx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
