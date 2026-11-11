.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
not word ptr [r14 + rdx]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edx, eax
and rbx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rbx]
and dil, sil
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], sil
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
cmovo rbx, rax
and al, 12 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdx]
or al, dl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -20
and rdx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rdx]
and bl, -30 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rcx]
cmovb cx, dx
and dx, si
btc rbx, rsi
and al, -105 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], edx
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 81
xor sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
