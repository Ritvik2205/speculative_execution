.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, cl
xor dl, dl
and sil, 93
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and dl, dl
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
lea ax, qword ptr [rbx]
and al, -68
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
