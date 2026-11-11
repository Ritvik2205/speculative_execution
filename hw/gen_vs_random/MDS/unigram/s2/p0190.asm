.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not dil
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rdx]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 13
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
cmovnp rdi, rsi
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 2
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
xor rbx, -51
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rax
cmovs eax, ebx
and bl, -34 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], si
and dl, 124 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rbx]
or dl, -115
and al, -61 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rcx]
and cl, -101
and rdi, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
