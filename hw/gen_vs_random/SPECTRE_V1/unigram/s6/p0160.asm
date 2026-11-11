.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rsi, 18
sets dil
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
sub ax, 124
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], cl
add al, 107 # instrumentation
lea ecx, qword ptr [rax + rdx + 79]
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
test cl, cl
add bl, -12 # instrumentation
lea rbx, qword ptr [rax + rcx]
and rdi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rdi
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], bx
and rsi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rsi], cx
lea rsi, qword ptr [rax]
bswap rcx
lea ebx, qword ptr [rcx + rcx + 43124]
bswap rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
