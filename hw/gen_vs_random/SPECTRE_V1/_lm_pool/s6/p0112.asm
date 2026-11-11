.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
add bl, cl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], dl
xor ecx, 8
and rcx, -29
cmp edx, 44
sub sil, -18
js .bb_0.2
jmp .exit_0
.bb_0.2:
bswap rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
