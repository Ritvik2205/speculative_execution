.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 54
add dl, 43 # instrumentation
lea rsi, qword ptr [rcx + rdi]
sbb si, 53
inc cl
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rbx
not dil
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 11
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rsi
inc si
sbb dil, al
and cl, 52
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
add bl, 13 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
