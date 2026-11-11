.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdx]
or ax, -14271
btr rsi, 146
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and cl, cl
xor dil, 124
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
not al
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], -86
jmp .bb_0.1
.bb_0.1:
and ax, -10351
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rsi
and dl, dl
and rax, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
not rsi
test cl, bl
btc rcx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
