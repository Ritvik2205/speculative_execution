.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dx, 46
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rsi
and sil, cl
btc ebx, 11
and rcx, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rcx]
mov di, si
cmovno ax, cx
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], bx
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rbx]
xor al, al
and rdi, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
setb dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
