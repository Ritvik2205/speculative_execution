.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 6
add dil, -75
js .bb_0.1
jmp .exit_0
.bb_0.1:
sub dl, -48
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], ax
lea rbx, qword ptr [rdi]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], cx
test cl, -120
xor cl, 78
sub cl, -21
mov bl, -31
not bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
