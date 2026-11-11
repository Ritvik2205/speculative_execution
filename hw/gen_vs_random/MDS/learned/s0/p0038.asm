.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 53
or sil, cl
or sil, -78
not bl
and cl, -19
and di, 99
bt ax, dx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
and bx, 76
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx]
bt di, dx
or al, 37
btc dx, 67
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
