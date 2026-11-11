.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl cx, dx
btr rdi, 129
and rbx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rbx]
cmovz dx, dx
and rbx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rcx]
cmovns cx, bx
or bl, al
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
jmp .bb_0.1
.bb_0.1:
and cl, 8 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rbx]
cmovnle ax, di
xor bl, -88
btc eax, 40
btc cx, ax
btc rsi, 80
and edi, edi
cmovz rdx, rbx
and rsi, 0b1111111111111 # instrumentation
not word ptr [r14 + rsi]
xor al, dil
or dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
