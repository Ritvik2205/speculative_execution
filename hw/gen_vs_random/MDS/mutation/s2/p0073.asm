.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rdx]
btr eax, ecx
test bl, dl
and dl, 48 # instrumentation
cmovz rbx, rdi
and cl, cl
and rdx, rsi
or ax, 127
and rbx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rsi
and rsi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rsi]
cmovl rbx, rsi
bt rdi, 36
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rsi], bx
and bl, 8 # instrumentation
cmovz rax, rbx
jmp .bb_0.1
.bb_0.1:
or ax, -11837
cmovnb ax, dx
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rsi
cmovz rdi, rbx
and rdi, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rdi]
xor rax, -843636050
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
