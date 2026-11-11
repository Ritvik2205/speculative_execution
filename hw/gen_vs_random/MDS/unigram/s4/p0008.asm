.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 57
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rcx]
cmovo esi, edi
cmovnl ecx, edi
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdi
or bl, 127
cmovl eax, esi
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 94
and rbx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rax
and rdi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], -32
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
cmovp cx, bx
and dl, 4 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rsi]
cmovnp rcx, rsi
btc rsi, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
