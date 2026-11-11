.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 21 # instrumentation
adc dx, 53
and rdi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdi]
lea rdx, qword ptr [rdi + rbx + 35553]
bts eax, 232
and sil, cl
cmovb cx, bx
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
and ax, 7954
lea ax, qword ptr [rdi + rdx]
mov sil, dil
xor al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
