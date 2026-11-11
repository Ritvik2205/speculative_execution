.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
cmp al, 56
and rdx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdx]
imul bx, ax, 85
cmovz rax, rsi
or rax, -443578116
and rsi, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rsi]
or di, 0b1000000000000000 # instrumentation
bsf cx, di
btr edx, 7
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rax
xchg eax, ebx
and rsi, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rdi]
add sil, -126 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rsi]
sbb si, si
and rdx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
