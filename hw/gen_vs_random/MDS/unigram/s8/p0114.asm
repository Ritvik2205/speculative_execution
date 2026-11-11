.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 15
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 7
and bl, -5 # instrumentation
cmovnl dx, si
and rcx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rax
btc rdi, rsi
bt esi, edx
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 10
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax
test rsi, 87
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1324040999
and rdi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
bts esi, ebx
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rdx], ebx
cmovb rax, rdx
cmovz di, di
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
