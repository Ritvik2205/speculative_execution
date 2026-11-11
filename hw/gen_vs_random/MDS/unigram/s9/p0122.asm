.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rsi], eax
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 29
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
xor di, -83
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 72
xor cl, 55
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 38
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rsi]
and cl, -76 # instrumentation
cmovl dx, ax
btc rcx, rax
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 6
xor dil, al
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr si, word ptr [r14 + rdx]
and cl, -8 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rbx], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
