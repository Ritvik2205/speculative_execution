.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 48 # instrumentation
cmovz rbx, rdi
test bl, dl
btr eax, ecx
and rsi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rsi]
cmovl rbx, rsi
and cl, cl
and rbx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rsi
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rsi], bx
or ax, 30524
and bl, 8 # instrumentation
cmovz rax, rbx
and rdx, rsi
bt rdi, 36
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
or ax, 16560
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rsi
xor rax, -270810088
and rdi, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], eax
cmovz rdi, rbx
cmovnb ax, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
