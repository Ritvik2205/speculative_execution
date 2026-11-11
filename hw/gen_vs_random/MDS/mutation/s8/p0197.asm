.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, cl
or ax, -11837
not al
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
xor dil, 8
btr rsi, 207
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], -86
and rdx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
test cl, bl
and rax, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rax]
btc rcx, rsi
and dl, dl
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rsi
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
not rsi
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
and ax, 29207
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
