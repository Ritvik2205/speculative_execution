.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, 63
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 812406526
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi], 9
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rdx
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rcx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 47
adc al, bl
and rsi, 0b1111111111111 # instrumentation
movzx cx, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rcx]
xchg rdi, rsi
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 2
add bl, 86 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
