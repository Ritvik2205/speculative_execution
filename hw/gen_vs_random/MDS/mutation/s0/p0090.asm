.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rsi, 207
and rdx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdx]
or ax, -20176
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
not al
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], -86
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -4
xor dil, -5
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and cl, cl
jmp .bb_0.1
.bb_0.1:
not rsi
and ax, 13090
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rsi
btc rcx, rsi
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
test cl, bl
and rax, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
and dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
