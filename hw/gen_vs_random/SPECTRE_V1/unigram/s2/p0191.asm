.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -104 # instrumentation
lea rbx, qword ptr [rax + rsi + 27]
and rax, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rax]
mul cl
xor al, -89
or di, di
or dx, 0b1000000000000000 # instrumentation
bsf bx, dx
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 22
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
cmp rdx, rsi
and rax, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -1
add dl, -4 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rax]
lea rcx, qword ptr [rax + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -42
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
