.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg dl, bl
or dx, 0b1000000000000000 # instrumentation
bsr dx, dx
and rdx, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -73
sbb dil, cl
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, -29 # instrumentation
add cl, -70 # instrumentation
setnp cl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
and rcx, -29
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], al
lea rdi, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
