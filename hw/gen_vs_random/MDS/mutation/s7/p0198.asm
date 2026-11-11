.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdx]
xor dil, -5
not al
or ax, 30524
btr rsi, 146
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], -86
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -4
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
and cl, cl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rsi
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
and ax, 13090
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rax]
btc rcx, rsi
test cl, bl
and dl, dl
not rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
