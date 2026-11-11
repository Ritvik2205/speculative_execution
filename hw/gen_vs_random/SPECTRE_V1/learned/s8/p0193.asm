.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
not cx
sbb sil, -78
sub dl, -48
test bl, -8
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
adc ax, -27488
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
jns .bb_0.2
jmp .exit_0
.bb_0.2:
lea dx, qword ptr [rcx + rbx + 54281]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, edi
test al, 59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
