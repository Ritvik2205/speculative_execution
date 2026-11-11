.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], -121
or edi, 61
inc sil
sub al, bl
sub bl, dil
mov al, -28
lea rcx, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
