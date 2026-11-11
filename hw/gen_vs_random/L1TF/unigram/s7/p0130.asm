.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 45
cmp eax, edx
and rbx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], dl
xor eax, edx
and rdx, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rdx]
sub rsi, 82
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
lea dx, qword ptr [rsi + rax + 67]
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], rdx
and rdi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rax]
and sil, -90
xchg rax, rdi
and rdx, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rdx]
setb cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
