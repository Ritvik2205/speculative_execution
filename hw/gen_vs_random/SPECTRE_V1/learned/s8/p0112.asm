.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 51
and rcx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rcx]
and bl, 87
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
test bl, -8
and rbx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rbx]
xor cl, dl
and sil, 11
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rcx
sbb bl, -41
sub al, dl
sub al, 63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
