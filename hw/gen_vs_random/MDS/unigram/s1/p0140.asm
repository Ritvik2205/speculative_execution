.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rbx, rax
and rbx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rbx]
cmovnb ax, bx
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdx
test eax, 1838539683
cmovb eax, esi
btr dx, bx
xor cl, cl
and rsi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rax
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 21
cmovnbe ax, di
xor al, sil
and rsi, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 123
and rsi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rsi]
bt rdi, 36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
