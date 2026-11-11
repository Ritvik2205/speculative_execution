.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 24
and rdi, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rdi]
cmovs di, ax
bts rbx, 94
and rdx, 67
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rbx
cmovz bx, si
xor dl, -68
test rsi, 879594088
xor bl, 2
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 11
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 23
cmovnle rdx, rax
not ax
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 13
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
and bl, -72 # instrumentation
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 28
cmovp edi, eax
and cl, 127
btc bx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
