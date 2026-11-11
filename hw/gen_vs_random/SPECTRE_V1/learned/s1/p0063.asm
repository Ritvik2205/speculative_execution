.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg ecx, edi
mov al, bl
sub ax, cx
cmp bl, dl
and rdx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdx]
lea ecx, qword ptr [rdx]
adc al, -92
add al, -109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
