.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -127
and rax, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 54
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
and cl, -57
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
cmp esi, 50
mov dil, sil
imul ax, dx, 55
lea ax, qword ptr [rdi + rdx]
add al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
