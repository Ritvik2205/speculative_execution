.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -75 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rbx]
xchg sil, dl
cmovnp rdx, rsi
or bl, dl
lea bx, qword ptr [rdi + rbx + 72]
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], cx
add cl, 35 # instrumentation
sets sil
jmp .bb_0.1
.bb_0.1:
or bl, al
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
btr rbx, 95
cmovp bx, dx
and rdx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
bswap ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
