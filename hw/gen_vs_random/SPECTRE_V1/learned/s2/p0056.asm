.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dx, cx
cmp al, bl
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
or cl, -98
mov al, dil
xor cl, dl
lea ecx, qword ptr [rax]
xor dl, sil
and dil, -93
sbb cx, 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
