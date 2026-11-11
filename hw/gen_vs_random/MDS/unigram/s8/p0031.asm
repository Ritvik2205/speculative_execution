.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edi, 248
cmovs rcx, rdi
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], bx
cmovno rdx, rcx
and rax, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rsi], 0
jmp .bb_0.1
.bb_0.1:
and cl, -24 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rsi]
cmovl rbx, rax
xor di, 93
or dil, cl
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], dx
or dl, -31
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rsi]
and sil, 49 # instrumentation
cmovp rax, rsi
and cl, 126 # instrumentation
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx]
or edx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
