.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rcx]
xor dil, al
xor sil, -46
and rdx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rdx]
and sil, -58 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rsi]
bts edx, 189
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 29
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rax
cmovle rdx, rdx
and rcx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rcx]
btc di, 164
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], 71
jmp .bb_0.1
.bb_0.1:
bt dx, 162
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
or di, 0b1000000000000000 # instrumentation
bsf di, di
and al, -83 # instrumentation
cmovnp rcx, rax
and rdi, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rdi]
bt edi, edx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -85
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -83
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
