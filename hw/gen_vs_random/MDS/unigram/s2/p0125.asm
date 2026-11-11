.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rdi
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rdx], esi
test sil, dl
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 115
and rax, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rax]
and bl, -72 # instrumentation
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 37
and cx, 9
cmovns ax, di
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rdi
or rsi, rdi
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rsi]
or rdx, 75
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 0
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 64
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 42
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rsi
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 66
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 22
cmovz rcx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
