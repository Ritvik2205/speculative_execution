.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 22
or al, 1
test al, 115
xchg rbx, rax
cmp dx, -26
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
add sil, dl
neg rdx
sub dil, cl
mov bl, dl
adc dil, 38
xchg dl, bl
adc cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
