.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg ax, cx
and rdi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rdi]
add cl, 32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdx]
btc cx, 31
lea rdx, qword ptr [rax + rdi + 97]
or di, 39
and cl, dil
lea cx, qword ptr [rax + rdi + 45]
jmp .bb_0.1
.bb_0.1:
add al, -49 # instrumentation
setnb al
btc ax, 24
and rax, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rax
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 98
and rsi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
inc dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
