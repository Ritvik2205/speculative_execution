.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, 0b1000000000000000 # instrumentation
bsr si, di
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], di
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 36
cmovle dx, si
or cl, -77
bts rsi, rax
cmovnp rbx, rax
xor edi, 43
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rdi
and bl, -82 # instrumentation
cmovz esi, eax
test rsi, rcx
btc cx, di
bt rbx, 241
test al, al
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -52
and rcx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rcx], 3
cmovnb rdx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
