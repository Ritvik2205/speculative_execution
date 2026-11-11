.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
xchg cl, al
add bl, -31 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rdx]
lea rcx, qword ptr [rdx + rcx]
and rax, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], bx
and rdx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdx]
cbw
add rdi, 4
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rsi
inc rcx
cbw
and rcx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rcx]
test cl, 83
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
