.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rdi
and rsi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rax]
xor edi, 96
and rcx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rcx]
bt bx, dx
test cl, dil
and rdi, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rdi]
test rdx, 38
btr rcx, rax
jmp .bb_0.1
.bb_0.1:
or bx, 76
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -2
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rcx], ax
or bx, 35
test rcx, rdi
test sil, al
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
or al, al
and rdx, rdi
test dx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
