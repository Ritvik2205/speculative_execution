.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rbx, 85
bswap rax
sub dl, -12
setns bl
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], dil
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], -86
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rdx]
mov rdx, 3189408690989687296
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
sub al, cl
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rax
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 23
and rbx, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rbx]
lea si, qword ptr [rbx + rax + 24]
sub di, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
