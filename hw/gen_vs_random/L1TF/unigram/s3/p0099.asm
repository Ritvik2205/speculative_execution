.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], rdi
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 93
xor di, 37
test cl, 99
and rbx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rbx]
add bl, -37 # instrumentation
dec cl
setns al
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dil
test edx, edx
and rax, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 23
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 61
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], bx
add bx, 62
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
