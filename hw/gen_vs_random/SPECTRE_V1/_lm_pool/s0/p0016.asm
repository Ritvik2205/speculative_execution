.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ebx
mov bl, al
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 5
add cl, -127
cmp rax, 900122030
and bl, -65
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
mov sil, cl
lea bx, qword ptr [rsi + rdi + 1]
sbb bl, sil
and rcx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
