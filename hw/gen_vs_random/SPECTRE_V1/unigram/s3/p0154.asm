.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 18
lea dx, qword ptr [rdi + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rcx]
add bl, -15 # instrumentation
movzx ax, cl
xchg sil, sil
inc rax
bswap rax
cmovno ax, cx
and rsi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rsi]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 72 # instrumentation
adc sil, 52
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 118
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx], 54
and rdx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
