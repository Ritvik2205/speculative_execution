.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnl rcx, rax
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
cmovnle rax, rsi
imul rbx, rbx, -39
or rax, rsi
and rbx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rbx]
or al, bl
neg al
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], cx
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], -21
cmovb si, di
imul cx, ax, 25
and rdx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
add bl, -31 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
