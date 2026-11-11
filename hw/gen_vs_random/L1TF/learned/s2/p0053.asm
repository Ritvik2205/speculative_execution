.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dil
and bl, dil
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], cx
sbb dl, cl
jmp .bb_0.2
.bb_0.2:
sub bl, dl
add sil, -61
and rdi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdi]
imul ax, bx, 75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
