.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 105
cmp rax, 921820217
sub ax, si
and al, -68
sub al, dl
and cl, bl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rcx]
and sil, bl
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
add al, -80
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
