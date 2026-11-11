.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, cl
cmovnb ax, dx
and rcx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rcx]
cmovl rax, rcx
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], 74
xchg si, di
test dil, -67
and cl, 8
and rcx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], 15
and rbx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rbx], cx
or cl, sil
or bl, sil
xor dl, sil
cmovp si, si
xor cl, dil
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], di
cmovz cx, di
and rbx, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rbx]
or ax, 6575
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
