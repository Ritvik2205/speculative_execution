.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], al
sub rax, -1628299544
lea rcx, qword ptr [rbx + rax + 15]
add al, bl
add ax, 6656
movzx ecx, ax
adc al, -82
sbb al, 66
and rdx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
