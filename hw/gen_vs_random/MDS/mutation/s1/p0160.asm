.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, rsi
and cl, cl
bt rdi, 36
and dl, 48 # instrumentation
cmovz rbx, rdi
or ax, 16560
and rbx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rsi
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rsi], bx
test bl, dl
and rsi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rsi]
btr eax, ecx
and bl, 8 # instrumentation
cmovz rax, rbx
cmovl rbx, rsi
jmp .bb_0.1
.bb_0.1:
cmovz rdi, rbx
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], eax
and rdi, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rsi
cmovnb ax, dx
xor rax, -1499464454
or ax, -4210
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
