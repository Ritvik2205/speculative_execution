.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 36
adc bx, 54
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 100
sub dil, cl
lea cx, qword ptr [rdi]
mov dil, cl
add al, al
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
lea dx, qword ptr [rbx + rax + 86]
mov dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
