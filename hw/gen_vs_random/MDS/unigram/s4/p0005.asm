.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not al
bts rcx, rbx
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], edx
or rbx, -72
and rsi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 62
and rdx, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -60
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 27
cmovb rsi, rsi
cmovz si, dx
or bl, -62
bts rax, rdi
and bl, 116 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
cmovb cx, cx
btc rsi, rax
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], di
cmovns rdx, rdx
and rax, 498847670
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
