.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dl
add dil, cl
sbb al, -14
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], dx
sub bl, dl
and rcx, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdx]
sbb bl, cl
btc ax, si
sbb dl, al
sbb bl, bl
neg cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
