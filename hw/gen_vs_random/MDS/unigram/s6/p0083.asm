.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, dl
cmovno rsi, rdi
cmovns ax, si
and cl, 125 # instrumentation
cmovo ax, si
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 37
and cl, 49 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rcx]
and cl, -81 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 6
and rsi, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 17451
and rsi, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
jmp .bb_0.1
.bb_0.1:
cmovns rsi, rcx
cmovns edi, edi
and rdx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdx]
bts edi, 248
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 45
and rbx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rbx]
cmovnb rbx, rsi
cmovo rbx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
