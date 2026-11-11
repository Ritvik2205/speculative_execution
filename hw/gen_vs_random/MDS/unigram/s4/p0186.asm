.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc cx, bx
cmovnb di, ax
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], dx
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 3898
or cl, sil
bts esi, 61
or ax, 0b1000000000000000 # instrumentation
bsr ax, ax
xor dil, -124
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], dx
or ebx, -15
cmovp cx, di
test eax, 343548072
test edx, esi
cmovb ax, si
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 74
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8639
test al, dl
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], -119
and cl, -8 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdi]
btc edi, 230
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
