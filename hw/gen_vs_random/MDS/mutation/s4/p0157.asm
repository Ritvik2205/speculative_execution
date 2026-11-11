.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rsi]
btr eax, ecx
or ax, 16560
and rbx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rsi
cmovl rbx, rsi
and cl, cl
test bl, dl
bt rdi, 36
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rsi], bx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rdx]
and bl, 8 # instrumentation
cmovz rax, rbx
and rdx, rsi
and dl, 48 # instrumentation
cmovz rbx, rdi
jmp .bb_0.1
.bb_0.1:
xor rax, -1657511731
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], eax
or ax, -6817
cmovz rdi, rbx
cmovnb ax, dx
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rsi
and rdi, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
