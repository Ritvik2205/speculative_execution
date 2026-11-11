.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rbx, 33
lea dx, qword ptr [rax]
test cx, ax
and rax, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rsi
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], rax
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 24
and rbx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rbx]
add al, 96 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rdi]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
lea rax, qword ptr [rsi + rax]
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], -32
and rax, 0b1111111111111 # instrumentation
cmp bx, word ptr [r14 + rax]
add dl, sil
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 113
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], cl
cmovnl rcx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
